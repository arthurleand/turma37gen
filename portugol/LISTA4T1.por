programa
{
	
	funcao inicio()
	{
		inteiro pontuacao[5]
		inteiro maiorPont = 0, pont=0

		para(inteiro x=0; x<5; x++){
			escreva("Digite o valor referente a ", (x+1), "ª pontuação: ")
			leia(pontuacao[x])
			se(pontuacao[x]>maiorPont){
				maiorPont = pontuacao[x]
			}
		}
		limpa()
		para(inteiro x=0; x<5; x++){
			escreva("\nA ", (x+1), "ª pontução é: ",pontuacao[x])
		}
		escreva("\nA maior pontuação foi: ", maiorPont)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 397; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */