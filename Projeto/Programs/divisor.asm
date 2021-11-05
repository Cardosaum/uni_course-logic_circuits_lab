# Divisao de a/b

# Valor de a e depois torna-se o resto da divisão
addi r1 r0 r0 12

# Valor de b
addi r2 r0 r0 3

# Estado da divisao
# addi r3 r0 r0 0

# Valor da divisão
# addi r4 r0 r0 0 

# Pula se r1 for positivo para A_POSITIVO
bgt r1 r0 3

# inverte o estado de r1 e r3 = 1
subi r1 r0 r1 0
addi r3 r3 r0 1  

# A_POSITIVO (3):

# Pula se r2 for positivo para DIVIDIR
bgt r2 r0 3

# inverte o estado de r2 e r3 = r3 + 1
subi r2 r0 r2 0 
addi r3 r3 r0 1

# DIVIDIR (6):
subi r1 r1 r2 0

# verifica se 0 > r1
bgt r0 r1 3

# Aumenta o valor da divisao
addi r4 r4 r0 1
jal r0 -3

# FIM_DIVISAO:

# Para o resto voltar para o positivo novamente
addi r1 r1 r2 0

# Adiciona a constante 1 
addi r5 r5 r0 1
bne r3 r5 2

# inverte o valor da divisão
subi r4 r0 r4 0

# FIM_PROGRAMA:
beq r0 r0 0
