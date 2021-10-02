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
		inteiro estoque[10]={10,10,10,10,10,10,10,10,10,10},lugarCarrinho=0,quantidadeDig=0
		inteiro lugarQuant=0,quantidadeFinal[10],lugarEstoque=0
		cadeia op= "S",codCarrinho,carrinho[10],validacao="INVALIDO"
		//entrada do menu
		enquanto(op=="S"){
			//Escreve menu
			escreva(nomeLoja,"\n")
			escreva(slogan,"\n")
			escreva("Código","\t|","Nome do Produto","\t\t\t\t\t|","Valor(R$)","\t|","Estoque")
			para(inteiro x=0;x<10;x++){
				escreva("\n",codigoProduto[x],"\t|",nomeProduto[x],"\t|",valor[x],"\t\t|",estoque[x])
			}			
			escreva("\n\nDigite o codigo do produto que você deseja: ")
			leia(codCarrinho)
			codCarrinho = txt.caixa_alta(codCarrinho)
			validacao="INVALIDO"
			//Validação do código do cliente.
			enquanto(validacao=="INVALIDO"){
				para(inteiro x = 0; x<10;x++){
					se(codCarrinho==codigoProduto[x]){					
						carrinho[x]=codCarrinho
						validacao="VALIDO"								
					}					
				}				
				se(validacao=="INVALIDO"){
					escreva("Código inválido!!")
					escreva("\nDigite o codigo do produto que você deseja: ")
					leia(codCarrinho)
					codCarrinho = txt.caixa_alta(codCarrinho)
				}					
			}
			//Validação da quantidade se é na quantidade do nosso estoque.
			escreva("\nQuantidade: ")
			leia(quantidadeDig)
			validacao="INVALIDO"
			enquanto(validacao=="INVALIDO"){
				para(inteiro x = 0; x<10;x++){
					se(codCarrinho==codigoProduto[x]){
						quantidadeFinal[x]= quantidadeDig
						validacao="VALIDO"						
					}
				}
					se(quantidadeDig<0 e quantidadeDig>10){
						escreva("\nValor inválido!!")
						escreva("\nDigite novamente a quantidade: ")
						leia(quantidadeDig)	
					}									
				}
			//Validção se o cliente quer ou não continuar a comprar.
			escreva("\nContinua a compra S/N: ")
			leia(op)
			op= txt.caixa_alta(op)
			enquanto(op!="S" e op!="N"){
				escreva("Opção inválida Tente novamente!!")
				escreva("\nContinua a compra S/N: ")
			     leia(op)
			     op= txt.caixa_alta(op)
			}
			//Subtração Estoque
			para(inteiro x = 0; x<10;x++){
				se(codCarrinho==codigoProduto[x]){
					estoque[x]=estoque[x]-quantidadeFinal[x]
				}
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
 * @POSICAO-CURSOR = 2812; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {codigoProduto, 9, 9, 13}-{quantidadeFinal, 17, 23, 15}-{codCarrinho, 18, 17, 11}-{carrinho, 18, 29, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */