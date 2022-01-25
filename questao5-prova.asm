# Questão 5

# Escreva um programa que defina um array de 10 inteiros (4 bytes cada). 
# A seguir o programa deve chamar uma função passando como argumento o endereço do array. 
# A função deve então ler 10 inteiros da entrada padrão. 
# Uma segunda função deve receber o endereço do array como argumento e verificar e imprimir quais são o maior e menor número do array. 
# Utilize salvamento e restauração de contexto.




.data

	array: .space 10 
	x: .word 0	




.text
	

	# Salvando a posição de memória do array
	la $t0, array
	lw $s0, 0($t0)
	

	#return 0;
	addi $v0, $zero, 10
	syscall