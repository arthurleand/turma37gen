programa
{
	
	funcao inicio()
	{
		inteiro codigo
		real numHoraTrab,numHoraExc,salarioTotal,salarioExc,horaTrab= 10.0,horaExc=20.0

		escreva("Digite seu código de matrícula: ")
		leia(codigo)
		escreva("Digite suas trabalhadas de forma decimal: ")
		leia(numHoraTrab)
		numHoraExc = numHoraTrab - 50.0
		salarioExc= numHoraExc * horaExc
		salarioTotal = (50.0 * horaTrab) + salarioExc
		se(numHoraTrab>50.0){			
			escreva("Código Funcionário: ",codigo)
			escreva("\nSálario Excedente: R$ ",salarioExc)
			escreva("\nSálario Total: R$ ",salarioTotal)
		}
		senao{
			escreva("Código Funcionário: ",codigo)
			escreva("\nSálario Excedente: R$ ",salarioExc)
			escreva("\nSálario Total: R$ ",salarioTotal)
		}
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 711; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */