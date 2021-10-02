programa
{
	inclua biblioteca Texto --> txt
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		cadeia nomeLoja="▂▃▄▅▆▇█▓▒░G2 GEEK░▒▓█▇▆▅▄▃▂"
		cadeia slogan="♥ Dê START no seu estilo ♥"
		cadeia codigoProduto[10]={"GK01","GK02","GK03","GK04","GK05","GK06","GK07","GK08","GK09","GK10"}
		cadeia nomeProduto[10]={"Camiseta Unissex Duff:Os Simpsons		  \t","Camiseta Unissex The Game Master		  \t"
		,"Camiseta Unissex Superman			  \t","Camiseta Unissex Fortnite                         ","Camiseta Unissex Sonserina: HARRY POTTER          "
		,"Chaveiro Funko Pocket POP R2-D2:STAR WARS         ","Chaveiro Funko Pocket POP Home de ferro:VINGADORES"
		,"Caneca	Trono de ferro: GAME OF THRONES	 	  ","Almofada Geek Mulher maravilha:DC COMICS	  \t","Almofada Geek Escudo Hylian: THE LEGEND OF ZELDA  "
		}
		real valor[10]={11.65,13.95,14.95,15.92,29.90,36.90,44.75,59.90,59.90,59.90},valorTotal=0.0,totalPagamento=0.00
		inteiro estoque[10]={10,10,10,10,10,10,10,10,10,10},quantidadeDig=0
		inteiro lugarQuant=0,quantidadeFinal[10],opPagamento=0
		cadeia op= "S",codCarrinho,carrinho[10],validacao="INVALIDO"
		
		
		
		// escreva("|","Bem vindo!","|\n")
		escreva(nomeLoja,"\n")
		escreva("\n",slogan)
		escreva("\n\nDeseja iniciar a compra S/N? " )
		leia(op)
		op = txt.caixa_alta(op)
		enquanto(op!="S" e op!="N"){
			escreva("Opção inválida tente novamente!!!")
			escreva("\nDeseja iniciar a compra S/N? " )
			leia(op)
			op = txt.caixa_alta(op)
		}
		limpa()
		//entrada do menu
		enquanto(op=="S"){
			//Escreve menu
			escreva(nomeLoja)
			escreva("\n",slogan,"\n")
			escreva("----------------------------------------------------------------------------------------")
			escreva("\nCódigo","\t|","Nome do Produto","\t\t\t\t\t\t|","Valor(R$)","\t|","Estoque\n")
			escreva("----------------------------------------------------------------------------------------")
			para(inteiro x=0;x<10;x++){
				escreva("\n",codigoProduto[x],"\t|",nomeProduto[x],"\t|",valor[x],"\t\t|",estoque[x])
			}
			escreva("\n*--------------------------------------------------------------------------------------------*")
			escreva("\nCarrinho de Compras\n")	
			escreva("\nCódigo","\t|","Nome do Produto","\t\t\t\t\t\t|","Valor(R$)","|","Estoque","|Quantidade\n")
			escreva("----------------------------------------------------------------------------------------------")		
			para(inteiro x=0;x<10;x++){
				se(quantidadeFinal[x]>0){
					escreva("\n",codigoProduto[x],"\t|",nomeProduto[x],"\t|",valor[x],"\t   |","10\t","    |",quantidadeFinal[x],"\n")
				}
			}
			escreva("\n\n*--------------------------------------------------------------------------------------------*")
			escreva("\nDigite o codigo do produto que você deseja: ")
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
					se(codCarrinho==codigoProduto[x] e (quantidadeDig>0 e quantidadeDig<10)){
						quantidadeFinal[x]= quantidadeDig
						validacao="VALIDO"						
					}
				}
					se(quantidadeDig<0 ou quantidadeDig>10){
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
		limpa()
		//Calcula Valor Total Da Compra
		para(inteiro x=0;x<10;x++){
			valorTotal=valorTotal+(quantidadeFinal[x]*valor[x])
		}
		enquanto(opPagamento<1 ou opPagamento>3){
			escreva("\nEscolha a opção de pagamento")
			escreva("\n-------------------------------------------------")
			escreva("\n1. À vista com 10% de desconto (R$", mat.arredondar((valorTotal - (valorTotal*0.1)),1),")")
			escreva("\n2. No cartão com acréscimo de 10% (R$",mat.arredondar((valorTotal + (valorTotal*0.1)),1),")")
			escreva("\n3. 2x no cartão com 15% de acréscimo (2x R$",mat.arredondar(((valorTotal + (valorTotal*0.15))/2),1),")")
			escreva("\n-------------------------------------------------")
			escreva("\nDigite a opção de pagamento: ")
			leia(opPagamento)
			se(opPagamento<1 ou opPagamento>3){
				escreva("\nOpção inválida, tente novamente!!")
			}
			senao se(opPagamento==1){
				totalPagamento=mat.arredondar((valorTotal - (valorTotal*0.1)),1)
			}
			senao se(opPagamento==2){
				totalPagamento=mat.arredondar((valorTotal + (valorTotal*0.1)),1)
			}
			senao se(opPagamento==3){
				totalPagamento=mat.arredondar(((valorTotal + (valorTotal*0.15))/2),1)
			}
		}
		limpa()
		escreva("Nota Fiscal")
		escreva("\n-------------------------------------------------------------------------------------------------")
		escreva("\n",nomeLoja,"\n")
		escreva(slogan,"\n")	
		escreva("\nCódigo","\t|","Nome do Produto","\t\t\t\t\t\t|Valor(R$)Imposto(R$)","\t|","Quantidade")
		escreva("\n-------------------------------------------------------------------------------------------------")
		se(opPagamento==1){
			para(inteiro x=0;x<10;x++){
				se(quantidadeFinal[x]>0){
					escreva("\n",codigoProduto[x],"\t|",nomeProduto[x],"\t|",valor[x]," (",mat.arredondar((valor[x]*0.09),2),")","\t\t|",quantidadeFinal[x])
				}
			}
			escreva("\n-------------------------------------------------------------------------------------------------")
			escreva("\nOpção à vista com 10 % de desconto selecionada")
			escreva("\nO valor total da compra foi: R$",totalPagamento)	
			escreva("\nOBS: Imposto já incluso no valor do produto")
			escreva("\n-------------------------------------------------------------------------------------------------")		
		}
		se(opPagamento ==2){
			para(inteiro x=0;x<10;x++){
				se(quantidadeFinal[x]>0){
					escreva("\n",codigoProduto[x],"\t|",nomeProduto[x],"\t|",valor[x]," (",mat.arredondar((valor[x]*0.09),2),")","\t\t|",quantidadeFinal[x])
				}
			}
			escreva("\n-------------------------------------------------------------------------------------------------")
			escreva("\nOpção cartão com 10 % de acréscimo selecionada")
			escreva("\nO valor total da compra foi: R$",totalPagamento)	
			escreva("\nOBS: Imposto já incluso no valor do produto")
			escreva("\n-------------------------------------------------------------------------------------------------")
		}
		se(opPagamento==3){
			para(inteiro x=0;x<10;x++){
				se(quantidadeFinal[x]>0){
					escreva("\n",codigoProduto[x],"\t|",nomeProduto[x],"\t|",valor[x]," (",mat.arredondar((valor[x]*0.09),2),")","\t\t|",quantidadeFinal[x])
				}
			}
			escreva("\n-------------------------------------------------------------------------------------------------")
			escreva("\nOpção 2x no cartão com 15 % de acréscimo selecionada")
			escreva("\nO valor das parcelas foi: 2x R$",totalPagamento)
			escreva("\nOBS: Imposto já incluso no valor do produto")	
			escreva("\n-------------------------------------------------------------------------------------------------")
		}
		escreva("\n\n┌───── •✧✧• ─────┐")
		escreva("\n *-*-Até Logo-*-* \n")
		escreva("└───── •✧✧• ─────┘\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 7920; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {valorTotal, 16, 79, 10}-{totalPagamento, 16, 94, 14};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */