#par-ou-impar.asm

# Código em C para testar se um nro é par ou ímpar.

# printf("Digite o numero a ser testado: \n");
# int n;
# scanf ("%d", &n);

# unsigned int test = 1;
# test = test & n;
# if(test == 0)
	#printf("O numero digitado eh par ! \n"); 
# else
	#printf("O numero digitado eh impar ! \n");

.data
	str1: .asciiz "Digite o numero a ser testado: "
	str2: .asciiz "O num eh impar"
	str3: .asciiz "o num eh par"
	n: .word
	test: .word

.text
	#Imprime a mensagem da string
	addi $v0, $zero, 4
	la $a0, str1
	syscall
	
	#Ler o nro a ser testado
	addi $v0, $zero, 5
	syscall
	la $t0, n
	sw $v0, 0($t0)         #Memória [$t0+0] <- v0 (aula de acesso a memória)
	add $s0, $zero, $v0
	
	#Teste usando máscara e & lógico
	#test = 1
	#addi $s1, $zero, 1     #test
	#la $t0, test
	#sw $s1, 0($t0)	       #Memória [$t0+0] <- $s1 (aula de acesso a memória)
	
	#test <- test & n
	#and $s1, $s1, $s0
	
	#Teste usando mod
	addi $t1, $zero, 2
	div $s0, $t1
	mfhi $s1
	
	#if(test == 0)	
	beq $s1, $zero, EHPAR   #(aula de controle de fluxo)
	
	#Imprime que é ímpar e sai
	addi $v0, $zero, 4
	la $a0, str2
	syscall
	j    SAI
	
EHPAR:	#Imprime que é par
	addi $v0, $zero, 4
	la $a0, str3
	syscall
	      

	#return 0
SAI:	addi $v0, $zero, 10
	syscall