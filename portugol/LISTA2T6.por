programa
{
	
	funcao inicio()
	{
		inteiro idade 
		escreva("Escreva a idade do nadador para definirmos sua categoria: ")
		leia(idade)

		se(idade < 4){
			escreva("Você é Jovem demais pra se encaixar em alguma categoria.")
		}
		senao se(idade > 4 e idade <8){
			escreva("Categoria= Infantil A")
		}
		senao se(idade <= 11){
			escreva("Categoria= Infantil B")
		}
		senao se(idade <= 13){
			escreva("Categoria= Juvenil A")
		}
		senao se(idade <= 17){
			escreva("Categoria= Juvenil B")
		}
		senao se(idade >= 18){
			escreva("Categoria= Adulto")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 521; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */