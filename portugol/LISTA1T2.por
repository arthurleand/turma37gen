programa
{
	
	funcao inicio()
	{
		inteiro dia,ano,mes,diaF,mesF
		escreva("Escreva quantos dias de vida você tem: ")
		leia(dia)
		diaF = dia % 30
		mes = dia / 30
		ano = mes / 12
		mesF = mes - (ano * 12)
		escreva("\nVocê tem ", ano," anos,", mesF, " meses e ", diaF, " dias de vida.")
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 294; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */