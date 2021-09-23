programa
{
	inclua biblioteca Matematica --> mat 
	funcao inicio()
	{
		real media1, media2, media3, mediaTotal
		escreva("Escreva a primeira nota do aluno: ")
		leia(media1)
		escreva("Escreva a segunda nota do aluno: ")
		leia(media2)
		escreva("Escreva a terceira nota do aluno: ")
		leia(media3)
		mediaTotal= mat.arredondar(((media1 * 1) + (media2 * 2) + (media3 * 3)) / (1 + 2 + 3) ,2)
		escreva("\nA média do aluno na unidade é de ", mediaTotal," pontos.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 475; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */