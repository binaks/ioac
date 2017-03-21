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
	
	#Testa a igualdade
	bne $t1, $zero, Else 
	
	#Caso Sejam iguais		
	add $t1, $t1, $t2
	addi $t1, $t1, -1 
	j EXIT				

Else: 
	#Caso sejam diferentes
	sub $t1, $t1, $t2
	addi $t1, $t1, 1   	

EXIT: 
	
	#Imprimir resultado
	li $v0, 4
	la $a0, str3
	syscall
	
	li $v0, 1
	move $a0, $t1
	syscall

	#Encerra o programa
	li $v0, 10
	syscall		

