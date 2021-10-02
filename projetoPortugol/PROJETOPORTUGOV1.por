programa
{
	inclua biblioteca Texto --> txt
	
	funcao inicio()
	{
		cadeia nomeLoja="G2 Geek"
		cadeia slogan="Dê START no seu estilo!!"
		cadeia codigoProduto[10]={"GK01","GK02","GK03","GK04","GK05","GK06","GK07","GK08","GK09","GK10"}
		cadeia nomeProduto[10]={"Camiseta Unissex Duff:Os Simpsons		  ","Camiseta Unissex The Game Master		  "
		,"Camiseta Unissex Superman			  ","Camiseta Unissex Fortnite                         ","Camiseta Unissex Sonserina: HARRY POTTER          "
		,"Chaveiro Funko Pocket POP R2-D2:STAR WARS         ","Chaveiro Funko Pocket POP Home de ferro:VINGADORES"
		,"Caneca	Trono de ferro: GAME OF THRONES	 	  ","Almofada Geek Mulher maravilha:DC COMICS	  ","Almofada Geek Escudo Hylian: THE LEGEND OF ZELDA  "
		}
		real valor[10]={11.65,13.95,14.95,15.92,29.90,36.90,44.75,59.90,59.90,59.90}
		inteiro estoque[10]={10,10,10,10,10,10,10,10,10,10},lugarCarrinho=-1,quantidade=0
		cadeia op= "S",codCarrinho,carrinho[10],validacao="INVALIDO"

		enquanto(op=="S"){
			escreva(nomeLoja,"\n")
			escreva(slogan,"\n")
			escreva("Código","\t|","Nome do Produto","\t\t\t\t\t|","Valor(R$)","\t|","Estoque")
			para(inteiro x=0;x<10;x++){
				escreva("\n",codigoProduto[x],"\t|",nomeProduto[x],"\t|",valor[x],"\t\t|",estoque[x])
			}
			
			escreva("\n\nDigite o codigo do produto que você deseja: ")
			leia(codCarrinho)
			validacao="INVALIDO"
			enquanto(validacao=="INVALIDO"){
				para(inteiro x = 0; x<10;x++){
					se(codCarrinho==codigoProduto[x]){					
						lugarCarrinho++
						carrinho[lugarCarrinho]=codCarrinho
						validacao="VALIDO"		
					}
					
				}
				se(validacao=="INVALIDO"){
					escreva("\nCódigo inválido!!")
					escreva("\nDigite o codigo do produto que você deseja: ")
					leia(codCarrinho)
				}
					
			}
			escreva("\nQuantidade: ")
			leia(quantidade)
						
			escreva("\nContinua a compra S/N: ")
			leia(op)
			op= txt.caixa_alta(op)	
			
			enquanto(op!="S" e op!="N"){
				escreva("Opção inválida Tente novamente!!")
				escreva("\nContinua a compra S/N: ")
			     leia(op)
			     op= txt.caixa_alta(op)
			}			
		}
		escreva("Até logo")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1815; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {codigoProduto, 9, 9, 13}-{carrinho, 17, 29, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */