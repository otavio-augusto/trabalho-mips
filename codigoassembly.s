  
.data
msg: 	.asciiz "Insira um numero: "
msg2: 	.asciiz "Digite um numero menor que 0 para sair."
msg3: 	.asciiz "Media: "

.text			

.globl main


main:	addi 		$s1, $zero, 0			#Declara a Nota
		addi 		$s2, $zero, 0			#Declara a Media
		add 		$s3, $zero, $zero		#Declara a Soma
			
While:	
		li      	$v0,4      				#Prepara a mensagem
		la      	$a0,msg  
		syscall

		li 			$v0, 5      			#Lendo uma nota. 
		syscall								#Chamada da Leitura
		
		add			$s1, $v0, $zero
		sgt 		$t1, $s1, $zero 		#if(num > 0)
       	beq 		$t1, $zero, fim	

		add		 	$s3, $s3, $s1
		
		addi 		$s2, $s2, 1   			#Cont++
	
		
		j While
		
#Fim do While 
fim: 	
		div 		$t2, $s3, $s2			#Media = Soma / Cont

		li      	$v0,4      				#Prepara a mensagem
		la  		$a0, msg3
		syscall 							#Mostrando a mensagem na tela.

		
		li 			$v0, 1      			#Mostrando o resultado
		move    	$a0, $t2
		syscall
			
	jr $ra

