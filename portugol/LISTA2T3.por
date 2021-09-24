programa
{
	inclua biblioteca Matematica -->mat
	funcao inicio()
	{
		inteiro num1,num2,num3,num4,quadNum1,quadNum2,quadNum3,quadNum4
		
		escreva("Digite o primeiro número: ")
		leia(num1)
		escreva("Digite o segundo número: ")
		leia(num2)
		escreva("Digite o terceiro número: ")
		leia(num3)
		escreva("Digite o quarto número: ")
		leia(num4)
		quadNum1= mat.potencia(num1,2)
		quadNum2= mat.potencia(num2,2)
		quadNum3= mat.potencia(num3,2)
		quadNum4= mat.potencia(num4,2) 

		se(quadNum3>=1000){
			escreva ("\nO quadrado do terceiro número é: ",quadNum3)
		}
		senao{
			escreva("O quadrado de ", num1, " é ",quadNum1)
			escreva("\nO quadrado de ", num2, " é ",quadNum2)
			escreva("\nO quadrado de ", num3, " é ",quadNum3)
			escreva("\nO quadrado de ", num4, " é ",quadNum4)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 776; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */