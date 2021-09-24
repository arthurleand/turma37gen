programa
{
	
	funcao inicio()
	{
		inteiro num
		
		escreva("Digite um número: ")
		leia(num)

	    	se(num==0){
	    		escreva(num," é um número neutro!!")
	    	}	    	
	    	senao se(num%2==0){
			escreva(num," é par")
		}
		senao{
			escreva(num," é impar")
		}
		se(num>0){
			escreva(" e positivo!!")
		}
		senao se(num<0) {
			escreva(" e negativo!!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 332; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */