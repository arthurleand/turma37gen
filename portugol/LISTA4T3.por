programa
{
	
	funcao inicio()
	{
		const inteiro LINHA=4, COLUNA=6
		inteiro n1[LINHA][COLUNA], n2[LINHA][COLUNA], m1[LINHA][COLUNA], m2[LINHA][COLUNA]

		para(inteiro linha=0; linha<LINHA;linha++){
			para(inteiro coluna=0; coluna<COLUNA; coluna++){
				escreva("Digite o valor referente a linha ",linha," coluna ",coluna," da matriz N1: ")
				leia(n1[linha][coluna])
			}
		}
		para(inteiro linha=0; linha<LINHA;linha++){
			para(inteiro coluna=0; coluna<COLUNA; coluna++){
				escreva("Digite o valor referente a linha ",linha," coluna ",coluna," da matriz N2: ")
				leia(n2[linha][coluna])
			}
		}
		para(inteiro linha=0; linha<LINHA;linha++){
			para(inteiro coluna=0; coluna<COLUNA; coluna++){
				m1[linha][coluna]= n1[linha][coluna]+n2[linha][coluna]
			}
		}
		para(inteiro linha=0; linha<LINHA;linha++){
			para(inteiro coluna=0; coluna<COLUNA; coluna++){
				m2[linha][coluna]= n1[linha][coluna]-n2[linha][coluna]
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 71; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {n1, 7, 10, 2}-{n2, 7, 29, 2}-{m1, 7, 48, 2}-{m2, 7, 67, 2};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */