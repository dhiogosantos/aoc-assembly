# Trabalho Extra 1

# Escreva um programa que leia 4 (x, y, w, z) inteiros e resolva a seguinte expressão aritmética. Imprima o resultado.

# (x^2 +  y^3 + z^4 + (x+y+z)) / w

.data 
	str1: .asciiz "Digite o valor do nro inteiro x:"
	str2: .asciiz "Digite o valor do nro inteiro y:"
	str3: .asciiz "Digite o valor do nro inteiro w:" 	
	str4: .asciiz "Digite o valor do nro inteiro z:"
	str5: .asciiz "O resultado da expressao eh:"

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
	
	#Imprimindo a str4
	addi $v0, $zero, 4
	la $a0, str4
	syscall
	
	#Leitura do quarto inteiro	
	addi $v0, $zero, 5	
	syscall	
	add $s3, $zero, $v0
	
	#(x+y+z)
	add $t0, $s0, $s1
	add $t1, $t0, $s3
		
	#x^2
	mult $s0, $s0
	mflo $s0
	
	#y^3
	add $t7, $zero, $s1
	mult $s1, $s1
	mflo $s1	 
	mult $s1, $t7
	mflo $s1
	
	#z^4	
	mult $s3, $s3
	mflo $s3	 
	mult $s3, $s3
	mflo $s3
	
	#(x^2 +  y^3 + z^4 + (x+y+z))
	add $t6, $t1, $s0
	add $t5, $t6, $s1
	add $t4, $t5, $s3
	
	#(x^2 +  y^3 + z^4 + (x+y+z)) / w
	div $t4, $s2
	mflo $t4	
	
	#Imprimindo a str5
	addi $v0, $zero, 4
	la $a0, str5
	syscall
	
	#Imprimindo o resultado
	addi $v0, $zero, 1
	add $a0, $zero, $t4	
	syscall		
	
	#return 0;
	addi $v0, $zero, 10
	syscall