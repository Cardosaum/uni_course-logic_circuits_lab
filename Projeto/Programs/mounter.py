def defineInstructionTerms(instruction):
    terms = instruction.split()
    instResult = []
    
    # Almost O(n²) -> Bad :(
    for term in terms:
        activeValue = ''
        for symbol in term:
            if symbol == ',':
                break
            activeValue += symbol
        if len(activeValue) > 0:    
            instResult.append(activeValue)
        
    return instResult

def hexCode(decNum, maxLength=4):
    # decNum must to be string
    return '0'*(maxLength-len(decNum))+hex(int(decNum))[2:]

def binCode(binNum, maxLength=4):
    # binNum must to be string
    return '0'*(maxLength-len(binNum))+binNum

def decToBin(decNum):
    return bin(int(decNum))[2:]

def binToHex(binNum):
    # binNum must to be string
    hexSymbols = ['0','1','2','3','4','5','6','7','8','9','A','B','C',
                  'D','E','F']
    hexMap = {}
    for i in range(0, 16):
        hexMap[binCode(bin(i)[2:])]=hexSymbols[i]    
    return hexMap[binCode(binNum)]

def getReg(regNotation):
    return binToHex(decToBin(regNotation[1:]))

# Complement Two :)
def complementTwo(value, bits=16):
    # value must to be string
    if value[0] == '-':
        binarie = bin(int(value[1:]))[2:]
        binarie = '0'*(bits-len(binarie))+binarie
        binarie = ['0' if x=='1' else '1' for x in binarie]
        return str(int(''.join(binarie), 2)+1)
    else:
        return value

def hexInstruction(instList, operDict, regDict):
    # Default Instruction:| Imm | Rb | Ra | Rd | Opcode |
    # branch:             | Imm | Rb | Ra | 0  | OpCode |
    # Jal:                | Imm | 0  | 0  | Rd | Opcode |
    # Jalr:               | Imm | 0  | Ra | Rd | Opcode |
    
    #----------------------------------------------------
    print('Instruction analised now: ', ' '.join(instList))
    
    #----------------------------------------------------
    Imm    = hex(int(complementTwo(instList[-1])))[2:]
    Imm    = '0'*(4-len(Imm))+Imm
    
    Rb     = '0'
    Ra     = '0'
    Rd     = '0'
    Opcode = binToHex(operDict[instList[0]])
    
    if instList[0][0] == 'b':
         # branch
         Ra = getReg(instList[1])
         Rb = getReg(instList[2])
    elif instList[0] == 'jal':
         # jal
         Rd = getReg(instList[1])
    elif instList[0] == 'jalr':
        # jalr
        Rd = getReg(instList[1])
        Ra = getReg(instList[2])
    else:
        # Default
        Rd = getReg(instList[1])
        Ra = getReg(instList[2])
        Rb = getReg(instList[3])
    
    return [Imm, Rb+Ra+Rd+Opcode]
    
# Program Reader
programName = input('Type your .asm file(just the name): ')
program = open(programName+'.asm', 'r').read().split('\n')

instructions = []
for instruction in program:
    if len(instruction)>0 and instruction[0]!='#':
        instructions.append(instruction.split())

# !!! You can turn Operation and Register in a single function

# Operation Generator
typeOperations = ['addi', 'subi', 'andi', 'ori', 'xori', 'beq', 'bne', 'ble', 'bleu',
                  'bgt', 'bgtu', 'jal', 'jalr']
operations = {}
for i in range(len(typeOperations)):
    binarie = bin(i)[2:]
    if len(binarie)<=4:
        operations[typeOperations[i]]='0'*(4-len(binarie))+binarie
    else:
        # Operation not defined
        operations[typeOperations[i]]='1111'

# Register Generator
typeRegister = ['r'+str(x) for x in range(0, 16)]
registerNotation = {}
for i in range(len(typeRegister)):
    binarie = bin(i)[2:]
    if len(binarie)<=4:
        registerNotation[typeRegister[i]]='0'*(4-len(binarie))+binarie
    else:
        # Register not founded
        registerNotation[typeRegister[i]]='1111'

# Instruction Composer
print('\nMounting...\n')

composerInstruction = []
for inst in instructions:
    composerInstruction.append(hexInstruction(inst, operations, registerNotation))

print('\n'+'-'*30)
print('Hex Code Generated: \n')
for hexInst in composerInstruction:
    print('0x'+hexInst[0],hexInst[1])
    
# Generate ROM's file

print('\n'+'-'*30)
print('ROM Code Generator: ')

head =\
"""#------------------------------------------------------------'
#- Deeds (Digital Electronics Education and Design Suite)
#- Rom Contents Saved on (11/3/2021, 10:50:24 PM)
#-      by Deeds (Digital Circuit Simulator)(Deeds-DcS)
#-      Ver. 2.41.150 (July 14, 2021)
#- Copyright (c) 2002-2021 University of Genoa, Italy
#-      Web Site:  https://www.digitalelectronicsdeeds.com
#------------------------------------------------------------
#R ROM1Kx16, id 0019
#- Deeds Rom Source Format (*.drs)

#A 0000h
#H

"""

instFile = open('output/'+programName+'_INST.drs','w')
immFile = open('output/'+programName+'_IMM.drs','w')

instFile.write(head)
immFile.write(head)

print('')
columnsNumber = int(input("Type the column's number from your ROM: "))
columnCounter = 0
lineCounter = 0
totalCells = 0

for inst in composerInstruction:   
    instFile.write(inst[1])
    immFile.write(inst[0])
    
    columnCounter += 1
    totalCells += 1
    if columnCounter == columnsNumber:
        columnCounter = 0
        lineCounter += 1
        
        instFile.write('\n')
        immFile.write('\n')
    else:
        instFile.write(' ')
        immFile.write(' ')

linesNumber = int(input("Type the line's number from your ROM: "))
for i in range(totalCells, (int(linesNumber/columnsNumber)+1)*columnsNumber):
    instFile.write('FFFF')
    immFile.write('FFFF')
    columnCounter += 1
    if columnCounter == columnsNumber:
        columnCounter = 0
        lineCounter += 1
        
        instFile.write('\n')
        immFile.write('\n')
    else:
        instFile.write(' ')
        immFile.write(' ')

instFile.close()
immFile.close()
print("\nROM's File Created!!")

conta = 0