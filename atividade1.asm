	.data

str1:	.asciiz "Digite o primeiro numero: "
str2:	.asciiz "Digite o segundo numero: "
str3:	.asciiz "O resultado e: "

	.text
	.globl main

main:

	#Imprimir str1
	li $v0, 4
	la $a0, str1
	syscall
	
	#Receber o num1
	li $v0, 5
	syscall
	move $t1, $v0

	#Imprimir str2
	li $v0, 4
	la $a0, str2
	syscall
	
	#Receber o num2
	li $v0, 5
	syscall
	move $t2, $v0
	
	#Subtrair num1 e num2
	sub $t3, $t1, $t2
	
	#Imprimir o resultado
	li $v0, 4
	la $a0, str3
	syscall
	
	li $v0, 1
	move $a0, $t3
	syscall
	

