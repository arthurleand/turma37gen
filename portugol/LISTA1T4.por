programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		inteiro a,b,c,d,r,s
		escreva("Escreva o valor de A: ")
		leia(a)
		escreva("Escreva o valor de B: ")
		leia(b)
		escreva("Escreva o valor de C: ")
		leia(c)

		r= mat.potencia((a+b),2)
		s= mat.potencia((b+c),2)
		d= (r + s) / 2
		escreva("O valor de D é ", d )
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 341; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */