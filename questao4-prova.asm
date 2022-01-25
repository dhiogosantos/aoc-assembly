# Questão 4
# Escreva um programa que leia um inteiro x do teclado. 
# A seguir leia x inteiros do teclado e calcule a média inteira dos x números lidos. Utilize macros caso deseje.

.data
	str1: .asciiz "Digite o primeiro numero:"
	str2: .asciiz "Digite o segundo numero:"
	str3: .asciiz "Digite o terceiro numero:"
	str4: .asciiz "A media inteira dos 3 numeros digitados eh:"	

.text	

	#Imprimindo a str1
	addi $v0, $zero, 4
	la $a0, str1
	syscall
	
	#Leitura do primeiro inteiro
	addi $v0, $zero, 5		 
	syscall
	add $s0, $zero, $v0	
	
	#Imprimindo a str2
	addi $v0, $zero, 4
	la $a0, str2
	syscall
	
	#Leitura do segundo inteiro
	addi $v0, $zero, 5	
	syscall	
	add $s1, $zero, $v0
	
	#Imprimindo a str3
	addi $v0, $zero, 4
	la $a0, str3
	syscall
	
	#Leitura do terceiro inteiro	
	addi $v0, $zero, 5	
	syscall	
	add $s2, $zero, $v0		
	
	#Somando os números digitados
	add $t0, $s0, $s1
	add $t1, $t0, $s2
	
	#Definindo o divisor	
	addi $s3, $zero, 3
	
	#Fazendo a media
	div $t1, $s3
	mflo $t1
	
	#Imprimindo a str4
	addi $v0, $zero, 4
	la $a0, str4
	syscall
		
	#Imprimindo um inteiro
	addi $v0, $zero, 1
	add $a0, $zero, $t1
	syscall	
	
	#return 0;
	addi $v0, $zero, 10
	syscall