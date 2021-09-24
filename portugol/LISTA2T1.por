programa
{
	inclua biblioteca Matematica --> mat 
	funcao inicio()
	{
		real pesoTomate,excessoPeso,taxaMulta,multaFinal = 0.0
		escreva("Digite o valor referente a quantos quilos de tomate você trouxe: ")
		leia(pesoTomate)
		taxaMulta= 4.0
		excessoPeso = pesoTomate-50.0
		se(pesoTomate>50.0){
			multaFinal =mat.arredondar(excessoPeso * taxaMulta ,2)
			escreva("Excesso de peso: ", excessoPeso,"Kg")
			escreva("\nO valor da multa é: R$ ",multaFinal)
		}
		senao{
			escreva("Excesso de peso: ", excessoPeso,"Kg")
			escreva("\nComo ", pesoTomate,"Kg de tomate não ultrapassou o limite estabelecido a multa é de: R$ ",multaFinal)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 558; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */