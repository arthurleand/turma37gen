programa
{
	inclua biblioteca Texto --> txt
	inclua biblioteca Matematica --> mat


	funcao inicio()
	{
		cadeia opNovaCompra = " "
		cadeia nomeLoja="▂▃▄▅▆▇█▓▒░G2 GEEK░▒▓█▇▆▅▄▃▂"
		cadeia slogan="♥ Dê START no seu estilo ♥"
		cadeia codigoProduto[10]={"GK01","GK02","GK03","GK04","GK05","GK06","GK07","GK08","GK09","GK10"}
		cadeia nomeProduto[10]={"Camiseta Unissex Duff:Os Simpsons		  ","Camiseta Unissex The Game Master		  "
		,"Camiseta Unissex Superman			  ","Camiseta Unissex Fortnite                         ","Camiseta Unissex Sonserina: HARRY POTTER          "
		,"Chaveiro Funko Pocket POP R2-D2:STAR WARS         ","Chaveiro Funko Pocket POP Home de ferro:VINGADORES"
		,"Caneca	Trono de ferro: GAME OF THRONES	 	  ","Almofada Geek Mulher maravilha:DC COMICS	  ","Almofada Geek Escudo Hylian: THE LEGEND OF ZELDA  "
		}
		real valor[10]={11.65,13.95,14.95,15.92,29.90,36.90,44.75,59.90,59.90,59.90},valorTotal=0.0,totalPagamento=0.00
		inteiro estoque[10]={10,10,10,10,10,10,10,10,10,10},quantidadeDig=0
		inteiro quantidadeDigAux[10]={0,0,0,0,0,0,0,0,0,0}
		inteiro lugarQuant=0,quantidadeFinal[10]={0,0,0,0,0,0,0,0,0,0},opPagamento=0
		cadeia op= "S",codCarrinho = " ",carrinho[10]={" "," "," "," "," "," "," "," "," "," "},validacao="INVALIDO"
		
		
		
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

		faca {
			se(op == "N") {
				pare
			}
			//entrada do menu
			enquanto(op=="S"){
				//Escreve menu
				escreva(nomeLoja)
				escreva("\n",slogan,"\n")
				escreva("----------------------------------------------------------------------------------------")
				escreva("\nCódigo","\t|","Nome do Produto","\t\t\t\t\t|","Valor(R$)","\t|","Estoque\n")
				escreva("----------------------------------------------------------------------------------------")
				para(inteiro x=0;x<10;x++){
					escreva("\n",codigoProduto[x],"\t|",nomeProduto[x],"\t|",valor[x],"\t\t|",estoque[x])
				}
				escreva("\n*--------------------------------------------------------------------------------------------*")
				escreva("\nCarrinho de Compras\n")	
				escreva("\nCódigo","\t|","Nome do Produto","\t\t\t\t\t|","Valor(R$)","|","Estoque","|Quantidade\n")
				escreva("----------------------------------------------------------------------------------------------")		
				para(inteiro x=0;x<10;x++){
					se(quantidadeFinal[x]>0){
						escreva("\n",codigoProduto[x],"\t|",nomeProduto[x],"\t|",valor[x],"\t   |",estoque[x],"\t","    |",quantidadeFinal[x],"\n")
					}
				}
				escreva("\n\n*--------------------------------------------------------------------------------------------*")
				escreva("\nOBS: Para alteração de quantidade, inserir novamente o código.")
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
	
				para(inteiro x=0; x<10; x++){
					se (carrinho[x]==codCarrinho) {
						quantidadeDigAux[x] = quantidadeDig
					}
				}
				validacao="INVALIDO"
				enquanto(validacao=="INVALIDO"){
					para(inteiro x = 0; x<10;x++){
						se(codCarrinho==codigoProduto[x] e quantidadeDigAux[x]>=0 e quantidadeDigAux[x]<=estoque[x]){
							quantidadeFinal[x] = quantidadeDigAux[x]
							validacao="VALIDO"						
						}
					}
					
					para(inteiro x=0; x<10; x++) {
						se(quantidadeDigAux[x]<0 ou quantidadeDigAux[x]>estoque[x]) {
							se(quantidadeDigAux[x]<0) {
								escreva("\nValor inválido!!")
								escreva("\nDigite novamente a quantidade: ")
								leia(quantidadeDigAux[x])
							} 
							senao {
								escreva("\nNÃO HÁ ESSA QUANTIDADE NO ESTOQUE")
								escreva("\nDigite novamente a quantidade: ")
								leia(quantidadeDigAux[x])
							}
						}
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
				limpa()				
			}
			//Subtração Estoque
			para(inteiro x = 0; x<10;x++){
				estoque[x]=estoque[x]-quantidadeFinal[x]
			}
				
			//Calcula Valor Total Da Compra
			para(inteiro x=0;x<10;x++){
				valorTotal=valorTotal+(quantidadeFinal[x]*valor[x])
			}
			//Calcula o total a pagar com os descontos e acréscimos
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
			escreva("\nCódigo","\t|","Nome do Produto","\t\t\t\t\t|Valor(R$)Imposto(R$)","\t|","Quantidade")
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
			escreva("\n *-*-ATÉ LOGO-*-* \n")
			escreva("└───── •✧✧• ─────┘\n")
			escreva("\n")
	
			escreva("DESEJA FAZER UMA NOVA COMPRA [S/N]? ")
			leia(opNovaCompra)
			opNovaCompra = txt.caixa_alta(opNovaCompra)
	
			se (opNovaCompra == "S") {
				opPagamento = 0
				quantidadeDig = 0
				valorTotal = 0.0
				totalPagamento = 0.00
				codCarrinho = " "
				op = "S"
				para (inteiro x=0; x<10; x++) {
					carrinho[x] = " "
					quantidadeFinal[x] = 0
					quantidadeDigAux[x] = 0
				}
				limpa()
			}			
		} enquanto(opNovaCompra == "S")
		limpa()
		escreva(nomeLoja,"\n")
		escreva("\n",slogan)	
		escreva("\n\n┌───── •✧✧• ─────┐")
		escreva("\n\n")
		escreva(" *-*-ATÉ LOGO-*-*")
		escreva("\n\n")
		escreva("└───── •✧✧• ─────┘\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4964; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {valorTotal, 18, 79, 10}-{totalPagamento, 18, 94, 14};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */