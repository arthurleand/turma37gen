programa
{
	
	funcao inicio()
	{
		inteiro ano, mes, dia, mesAtual, diaAtual, anoDia, mesDia,diaTotal,totalDia
		escreva("Escreva quantos anos você tem: ")
		leia(ano)
		escreva("Escreva o número referente ao mês que você nasceu: ")
		leia(mes)
		escreva("Escreva o número referente ao dia que você nasceu: ")
		leia(dia)
		escreva("Escreva o número referente ao mês que estamos atualmente: ")
		leia(mesAtual)
		escreva("Escreva o número referente ao dia que estamos atualmente: ")
		leia(diaAtual)
		anoDia = ano * 365
		se( mes > mesAtual){
			mesDia = (mes-mesAtual) * 30
		}
		senao{
			
				mesDia =(mesAtual-mes)* 30
		}
		se (dia>diaAtual) {
			
			diaTotal = dia - diaAtual
			
		}
		senao{
			
			diaTotal = diaAtual -dia 
		}
		totalDia = diaTotal +  mesDia + anoDia
		escreva("\nVocê tem ",totalDia," dias de vida.\n")	
		}
	
	}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 810; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */