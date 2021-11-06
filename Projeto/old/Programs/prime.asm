addi r1 r0 r0 0
addi r2 r0 r0 20
addi r3 r0 r0 45

jal r15 

# COLOCA O RESULTADO
addi r1 r0 r4 0

# FIM
beq r1 r1 0

#---------------
addi r2 r2 r0 1

#---------------
addi r4 r0 r2 0
addi r5 r0 r0 1

# se r4 == 1
addi r6 r0 r0 1
beq r4 r6 -4

# se r4 == r5
bne r4 r5 1
jalr r0 r15

# se r4 > r5
bgt r4 r5 
jal r0 2

# r5 += 1
addi r5 r5 r0 1
jal r0 DIVISAO



# DIVISAO
beq r4 r0 VOLTA
addi r5 r5 r0 1
jal r0 -3

#---------------
subi r4 r4 r5 0
bgt r0 r4 FIM_DIVISAO
jal r0 -2
