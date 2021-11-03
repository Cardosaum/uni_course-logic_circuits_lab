def binario(valor):
    resultado = bin(valor)[2:]
    return '0'*(4-len(resultado))+resultado

def decimal(binario):
    posicao = len(binario)-1
    resultado = 0
    for elemento in binario:
        resultado += int(elemento)*(2**posicao)
        posicao -= 1
    return resultado

simbolo = {}
listagem = [str(x) for x in list(range(0, 10))]+['a','b','c','d','e','f']

for i in range(len(listagem)):
    simbolo[listagem[i]] = i

instrucao = ''.join(input().split())

imediato = ''
for elemento in instrucao[0:4]:
    imediato = imediato+binario(simbolo[elemento])

resultado = ''
for elemento in instrucao[4:]:
    resultado = binario(simbolo[elemento]) + resultado

operacoes = {}
operacoes['0000']='addi'
operacoes['0001']='subi'
operacoes['0010']='andi'
operacoes['0011']='ori'
operacoes['0100']='xori'
operacoes['0101']='beq'
operacoes['0110']='bne'
operacoes['0111']='ble'
operacoes['1000']='bleu'
operacoes['1001']='bgt'
operacoes['1010']='btu'
operacoes['1011']='jal'
operacoes['1100']='jalr'

print(f"Opcode: {operacoes[resultado[0:4]]} ({resultado[0:4]})")
print(f'Rd: R{decimal(resultado[4:8])} ({resultado[4:8]})')
print(f'Ra: R{decimal(resultado[8:12])} ({resultado[8:12]})')
print(f'Rb: R{decimal(resultado[12:])} ({resultado[12:]})')
print(f'Imediato: {decimal(imediato)} ({imediato})')