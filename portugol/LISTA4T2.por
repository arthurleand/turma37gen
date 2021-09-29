programa
{
	
	funcao inicio()
	{
		const inteiro NUM=10
		inteiro valor[NUM],contMaior=-1,maior= 0
		real media,totalNum=0.0

		para(inteiro x=0; x<NUM; x++){
			escreva("Digite o número referente ao ", (x+1), "º valor: ")
			leia(valor[x])
			totalNum+= valor[x]
			se(valor[x]>maior){
				maior=valor[x]
				contMaior++
			}
		}
		limpa()
		para(inteiro x=0; x<NUM; x++){
			escreva("O ", (x+1), "º valor é: ", valor[x],"\n")
		}
		media= totalNum/NUM
		escreva("A média dos Valores apresentados é: ", media,"\n")
		escreva("A quantidade referente a ocorrência de maior valor foi: ",contMaior)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 124; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */