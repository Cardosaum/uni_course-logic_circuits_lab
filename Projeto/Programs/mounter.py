def defineInstructionTerms(instruction):
    terms = instruction.split()
    instResult = []

    # Almost O(n²) -> Bad :(
    for term in terms:
        activeValue = ""
        for symbol in term:
            if symbol == ",":
                break
            activeValue += symbol
        if len(activeValue) > 0:
            instResult.append(activeValue)

    return instResult


def hexCode(decNum, maxLength=4):
    # decNum must to be string
    return "0" * (maxLength - len(decNum)) + hex(int(decNum))[2:]


def binCode(binNum, maxLength=4):
    # binNum must to be string
    return "0" * (maxLength - len(binNum)) + binNum


def decToBin(decNum):
    return bin(int(decNum))[2:]


def binToHex(binNum):
    # binNum must to be string
    hexSymbols = [
        "0",
        "1",
        "2",
        "3",
        "4",
        "5",
        "6",
        "7",
        "8",
        "9",
        "A",
        "B",
        "C",
        "D",
        "E",
        "F",
    ]
    hexMap = {}
    for i in range(0, 16):
        hexMap[binCode(bin(i)[2:])] = hexSymbols[i]
    return hexMap[binCode(binNum)]


def getReg(regNotation):
    return binToHex(decToBin(regNotation[1:]))


# Complement Two :)
def complementTwo(value, bits=16):
    # value must to be string
    if value[0] == "-":
        binarie = bin(int(value[1:]))[2:]
        binarie = "0" * (bits - len(binarie)) + binarie
        binarie = ["0" if x == "1" else "1" for x in binarie]
        return str(int("".join(binarie), 2) + 1)
    else:
        return value


def hexInstruction(instList, operDict, regDict):
    # Default Instruction:| Imm | Rb | Ra | Rd | Opcode |
    # branch:             | Imm | Rb | Ra | 0  | OpCode |
    # Jal:                | Imm | 0  | 0  | Rd | Opcode |
    # Jalr:               | Imm | 0  | Ra | Rd | Opcode |

    Imm = hex(int(complementTwo(instList[-1])))[2:]
    Imm = "0" * (4 - len(Imm)) + Imm

    Rb = "0"
    Ra = "0"
    Rd = "0"
    Opcode = binToHex(operDict[instList[0]])

    if instList[0][0] == "b":
        # branch
        Rb = getReg(instList[1])
        Ra = getReg(instList[2])
    elif instList[0] == "jal":
        # jal
        Rd = getReg(instList[1])
    elif instList[0] == "jalr":
        # jalr
        Rd = getReg(instList[1])
        Rd = getReg(instList[2])
    else:
        # Default
        Rd = getReg(instList[1])
        Ra = getReg(instList[2])
        Rb = getReg(instList[3])

    return "0x" + Imm + " " + Rb + Ra + Rd + Opcode


# Program Reader
programName = input("Type your .asm file(just the name): ")
program = open(programName + ".asm", "r").read().split("\n")

instructions = []
for instruction in program:
    instructions.append(instruction.split())

# !!! You can turn Operation and Register in a single function

# Operation Generator
typeOperations = [
    "addi",
    "subi",
    "andi",
    "ori",
    "xori",
    "beq",
    "bne",
    "ble",
    "bleu",
    "bgt",
    "bgtu",
    "jal",
    "jalr",
]
operations = {}
for i in range(len(typeOperations)):
    binarie = bin(i)[2:]
    if len(binarie) <= 4:
        operations[typeOperations[i]] = "0" * (4 - len(binarie)) + binarie
    else:
        # Operation not defined
        operations[typeOperations[i]] = "1111"

# Register Generator
typeRegister = ["r" + str(x) for x in range(0, 16)]
registerNotation = {}
for i in range(len(typeRegister)):
    binarie = bin(i)[2:]
    if len(binarie) <= 4:
        registerNotation[typeRegister[i]] = "0" * (4 - len(binarie)) + binarie
    else:
        # Register not founded
        registerNotation[typeRegister[i]] = "1111"

# Instruction Composer
decompInstruction = []
for instruction in program:
    terms = defineInstructionTerms(instruction)
    if len(terms) > 0:
        decompInstruction.append(terms)

composerInstruction = []
for inst in decompInstruction:
    composerInstruction.append(hexInstruction(inst, operations, registerNotation))

for hexInst in composerInstruction:
    print(hexInst)
