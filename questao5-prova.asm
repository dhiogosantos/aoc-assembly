# Quest�o 5

# Escreva um programa que defina um array de 10 inteiros (4 bytes cada). 
# A seguir o programa deve chamar uma fun��o passando como argumento o endere�o do array. 
# A fun��o deve ent�o ler 10 inteiros da entrada padr�o. 
# Uma segunda fun��o deve receber o endere�o do array como argumento e verificar e imprimir quais s�o o maior e menor n�mero do array. 
# Utilize salvamento e restaura��o de contexto.




.data

	array: .space 10 
	x: .word 0	




.text
	

	# Salvando a posi��o de mem�ria do array
	la $t0, array
	lw $s0, 0($t0)
	

	#return 0;
	addi $v0, $zero, 10
	syscall