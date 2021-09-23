programa
{
	
	funcao inicio()
	{
		inteiro segundo,minuto,hora,segundoFinal,minutoFinal
		escreva("Escreva em segundos o número referente ao tempo em segundos do evento: ")
		leia(segundo)
		segundoFinal = segundo % 60
		minuto = segundo / 60
		hora = minuto / 60
		minutoFinal= minuto - (hora *60)
		escreva("O evento durou ", hora, " horas,", minutoFinal, "minutos e ", segundoFinal ," segundos.")
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 403; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */