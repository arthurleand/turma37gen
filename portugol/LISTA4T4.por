programa
{
	
	funcao inicio()
	{
		inteiro matriz[3][3], soma=0, somaDiag=0

		para(inteiro linha=0; linha<3; linha++){
			para(inteiro coluna=0; coluna<3; coluna++){
				escreva("Digite o valor referente a linha ",linha," coluna ",coluna," da matriz: ")
				leia(matriz[linha][coluna])
				soma += matriz[linha][coluna]

				se(linha==coluna){
					somaDiag += matriz[linha][coluna]
				}				
			}
		}
		limpa()
		escreva("A soma dos valores da matriz é: ", soma)
		escreva("\nA soma da diagonal principal da matriz é: ", somaDiag)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 417; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 6, 10, 6}-{soma, 6, 24, 4}-{somaDiag, 6, 32, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */