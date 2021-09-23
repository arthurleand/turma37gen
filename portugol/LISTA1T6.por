programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		real x1,y1,x2,y2,d
		escreva("Digite o valor de x1: ")
		leia(x1)
		escreva("Digite o valor de y1: ")
		leia(y1)
		escreva("Digite o valor de x2: ")
		leia(x2)
		escreva("Digite o valor de y2: ")
		leia(y2)
		d = mat.arredondar((mat.raiz(mat.potencia((x2-x1), 2.0)+ (mat.potencia((y2-y1), 2.0)),2.0)),2)
		escreva("A distância entre os pontos é de: ",d)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 423; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */