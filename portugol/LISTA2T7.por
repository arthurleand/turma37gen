programa
{
	
	funcao inicio()
	{
		real base, altura, area
		
		escreva("Digite o valor referente a base do triângulo: ")
		leia(base)
		escreva("Digite o valor referente a altura do triângulo: ")
		leia(altura)

		se(base>0 e altura>0){
			area= (base*altura)/2
			escreva("A área do triângulo é ", area, " m²!!")			
		}
		senao{
			escreva("Medidas negativas não são aceitas no programa, reinicie!!")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 313; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */