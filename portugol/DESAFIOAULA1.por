programa
{
	inclua biblioteca Matematica --> mat 
	funcao inicio()
	{
		cadeia nome
		real celsius ,temperaturaFinal, fahrenheit
		escreva("Escreva seu nome: ")
		leia(nome)
		escreva("Escreva a temperatura em  Fahrenheit: ")
		leia(fahrenheit)
		celsius = mat.arredondar ((fahrenheit -32) / 1.8, 2)
		escreva(nome, " a temperatura em celsius é: ",celsius)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 250; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */