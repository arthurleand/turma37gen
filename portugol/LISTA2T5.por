programa
{
	
	funcao inicio()
	{
		real indicePol
		escreva("Indique o indíce de poluiçao: ")
		leia(indicePol)

		se(indicePol<0.25){
			escreva("Os indíces de poluição estão ótimos continuem o trabalho!!")
		}
		senao se(indicePol>0.25 e indicePol<0.3){
			escreva("Indíce de poluição quase ultrapassando o limite tenham mais cuidado!!")
		}
		senao se(indicePol>=0.3 e indicePol<0.4){
			escreva("As indústrias do 1º grupo estão intimadas a suspenderem suas atividades!!")
		}
		senao se(indicePol>=0.4 e indicePol<0.5){
			escreva("As indústrias do 1º e 2º grupo estão intimadas a suspenderem suas atividades!!")
		}
		senao {
			escreva("Todas as indústrias estão intimadas a suspenderem suas atividades!!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 342; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */