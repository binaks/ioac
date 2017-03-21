	.data
str1:	.asciiz "Digite o valor de k: "
str2:	.asciiz "f = "
g:	.word 5
h:	.word 7
i:	.word 56
m:	.word 9

	.text
	.globl main
	
main:
	li $v0, 4
	la $a0, str1
	syscall

	li $v0, 5
	syscall
	move $t0, $v0
	
	lw $t1, g
	lw $t2, h
	lw $t3, i
	lw $t4, m
	
A:	
	bne $t0, 0, B
	add $s0, $t3, $t4
	j EXIT
B:	
	bne $t0, 1, C
	add $s0, $t1, $t2
	j EXIT
C:	
	bne $t0, 2, D
	sub $s0, $t1, $t2
	j EXIT
D:	
	bne $t0, 3, EXIT
	sub $s0, $t3, $t2

EXIT:
	li $v0, 4
	la $a0, str2
	syscall

	li $v0, 1		
	move $a0, $s0
	syscall
	
	li $v0, 10		
	syscall