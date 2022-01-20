#iobasico.asm

#Exemplifica a entrada e saída básica de dados.

.data
	#Declarando uma String
	str1: .asciiz "Testando a escrita de uma String: "


.text 

	#Leitura de inteiros
	addi $v0, $zero, 1
	addi $a0, $zero, 42
	syscall
	
	#Imprimindo a String
	addi $v0, $zero, 4
	la $a0, str1
	syscall	
	
	
	#return 0
	addi $v0, $zero, 10
	syscall
