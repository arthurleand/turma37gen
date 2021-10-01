programa
{
	inclua biblioteca Texto --> txt
	
	funcao inicio()
	{
		cadeia nomeLoja="G2 Geek"
		cadeia slogan="Dê START no seu estilo!!"
		cadeia codigoProduto[10]={"Gk01","Gk02","Gk03","Gk04","Gk05","Gk06","Gk07","Gk08","Gk09","Gk10"}
		cadeia nomeProduto[10]={"Camiseta Unissex Duff:Os Simpsons","Camiseta Unissex The Game Master"
		,"Camiseta Unissex Superman","Camiseta Unissex Fortnite","Camiseta Unissex Sonserina: HARRY POTTER"
		,"Chaveiro Funko Pocket POP R2-D2:STAR WARS","Chaveiro Funko Pocket POP Home de ferro:VINGADORES"
		,"Caneca Trono de ferro: GAME OF THRONES","Almofada Geek Mulher maravilha:DC COMICS","Almofada Geek Escudo Hylian: THE LEGEND OF ZELDA"
		}
		real valor[10]={11.65,13.95,14.95,15.92,29.90,36.90,44.75,59.90,59.90,59.90}
		inteiro estoque[10]={10,10,10,10,10,10,10,10,10,10}
		cadeia op= "S"

		enquanto(op=="S"){
			escreva(nomeLoja,"\n")
			escreva(slogan,"\n")
			escreva("Código","\t|","Nome do Produto","\t|","Valor","\t|","Estoque","\t|")
			para(inteiro x=0;x<10;x++){
				escreva("\n",codigoProduto[x],"|\t",nomeProduto[x],"| ",valor[x],"|",estoque[x])
			}
			escreva("\nContinua a compra S/N: ")
			leia(op)
			op= txt.caixa_alta(op)	
			se(op=="N"){
				escreva("Até logo")
			}
			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1052; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */