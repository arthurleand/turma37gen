package applications;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Scanner;

import entities.Produto;

public class LojaG2Geek {

	public static void limpa() {

		for (int x = 0; x < 50; x++) {
			System.out.println();
		}

	}

	public static void cabecalho() {

		String nomeLoja = "『G』『2』『-』『G』『E』『E』『K』";
		String slogan = "♥ Dê START no seu estilo ♥";
		System.out.println();
		System.out.println(nomeLoja);
		System.out.print("\n" + slogan + "\n");
	}

	public static void main(String[] args) {

		Locale.setDefault(Locale.US);
		Scanner scan = new Scanner(System.in);
		List<Produto> produto = new ArrayList<>();
		List<Produto> carrinho = new ArrayList<>();
		Produto pagamento = new Produto(null, null, 0, 0);

		String nomeProduto[] = { "Camiseta Unissex Duff:Os Simpsons		  ", "Camiseta Unissex The Game Master		  ",
				"Camiseta Unissex Superman			  ", "Camiseta Unissex Fortnite                         ",
				"Camiseta Unissex Sonserina: HARRY POTTER          ",
				"Chaveiro Funko Pocket POP R2-D2:STAR WARS         ",
				"Chaveiro Funko Pocket POP Home de ferro:VINGADORES", "Caneca	Trono de ferro: GAME OF THRONES	 	  ",
				"Almofada Geek Mulher maravilha:DC COMICS	  ", "Almofada Geek Escudo Hylian: THE LEGEND OF ZELDA  " };
		double valor[] = { 11.65, 13.95, 14.95, 15.92, 29.90, 36.90, 44.75, 59.90, 59.90, 59.90 };
		int indiceProduto = 0;
		char op;
		char opNovaCompra;
		String codCarrinho;
		String validacao;
		int quantidadeDig = 0;
		int posicao = -1, posicaoFinal = 0;
		double valorTotal = 0, totalPagamento;
		int codigoRep=0;

		for (int x = 0; x < nomeProduto.length; x++) {
			produto.add(new Produto("GK0" + (x + 1), nomeProduto[x], valor[x], 10));
		}

		cabecalho();
		System.out.print("\n\nDeseja iniciar a compra S/N: ");
		op = scan.next().toUpperCase().charAt(0);

		while (op != 'S' && op != 'N') {
			System.out.println("Opção inválida tente novamente!!!");
			System.out.print("Deseja iniciar a compra S/N: ");
			op = scan.next().toUpperCase().charAt(0);
		}
		limpa();

		do {

			if (op == 'N') {
				break;
			}

			while (op == 'S') {

				System.out.print("CÓD.\t|PRODUTO \t\t\t\t\t\t|PREÇO\t\t|ESTOQUE");
				System.out.println(
						"\n*--------------------------------------------------------------------------------------------*");
				for (Produto product : produto) {
					System.out.print(product.getCodigo() + "\t|" + product.getNome() + "\t|" + product.getValor()
							+ "\t\t|" + product.getEstoque() + "\n");

				}

				// CARRINHO
				if (!carrinho.isEmpty()) {
					System.out.print(
							"*--------------------------------------------------------------------------------------------*");
					System.out.print("\n\nCarrinho de Compras\n");
					System.out.print("CÓD.\t|PRODUTO \t\t\t\t\t\t|PREÇO\t\t|ESTOQUE");
					System.out.println(
							"\n*--------------------------------------------------------------------------------------------*");
					for (Produto product : carrinho) {
						if (product.getEstoque() > 0) {
							System.out.print(product.getCodigo() + "\t|" + product.getNome() + "\t|"
									+ product.getValor() + "\t\t|" + product.getEstoque() + "\n");
						}

					}
				} else {
					System.out.print(
							"\n*--------------------------------------------------------------------------------------------*");
					System.out.println("\nSeu carrinho está vazio... :(");
				}

				System.out.print(
						"\n\n*--------------------------------------------------------------------------------------------*");
				System.out.print("\nDigite o codigo do produto que você deseja: ");
				codCarrinho = scan.next().toUpperCase();

				// Validacao codigo usuario
				validacao = "INVALIDO";

				while (validacao == "INVALIDO") {
					for (Produto product : produto) {
						if (codCarrinho.equals(product.getCodigo())) {
							posicao++;
							posicaoFinal = posicao;
							validacao = "VALIDO";
						} else {
							posicao++;
						}
						for (Produto product1 : carrinho) {
							if (codCarrinho.equals(product1.getCodigo())) {
								validacao = "INVALIDO";
								codigoRep=1;
							}
						}

					}
					posicao = -1;

					// Validacao quantidade no estoque
					if (produto.get(posicaoFinal).getEstoque() > 0) {
						if (validacao == "VALIDO") {
							System.out.print("Quantidade: ");
							quantidadeDig = scan.nextInt();
							validacao = "INVALIDO";
							while (validacao == "INVALIDO") {

								if (quantidadeDig <= produto.get(posicaoFinal).getEstoque() && quantidadeDig > 0) {
									carrinho.add(new Produto(produto.get(posicaoFinal).getCodigo(),
											produto.get(posicaoFinal).getNome(), produto.get(posicaoFinal).getValor(),
											quantidadeDig));
									validacao = "VALIDO";
								} else {
									System.out.print("Quantidade inválida!!\nTente Novamente: ");
									quantidadeDig = scan.nextInt();
								}

							}

						} else if (validacao == "INVALIDO") {	
							if(codigoRep==1) {
								System.out.print("Código inválido, produto já adicionado!!");
								codigoRep=0;
								break;
							}else {
							System.out.print("Código inválido!!");
							System.out.print("\nDigite o codigo do produto que você deseja: ");
							codCarrinho = scan.next().toUpperCase();
							}	
							}
					}else {
						System.out.println("Produto fora do estoque!!");
						break;
					}
				}

				System.out.print("\nContinua a compra S/N: ");
				op = scan.next().toUpperCase().charAt(0);

				while (op != 'S' && op != 'N') {
					System.out.print("Opção inválida. Tente novamente!!");
					System.out.print("\nContinua a compra S/N: ");
					op = scan.next().toUpperCase().charAt(0);
				}

			}

			// Subtracao estoque
			for (Produto product : produto) {
				for (Produto carrinho1 : carrinho) {
					if (product.getCodigo().equals(carrinho1.getCodigo())) {
						product.setEstoque(product.getEstoque() - carrinho1.getEstoque());
					}
				}
			}
			// Valor total compra sem descontos e acrescimos
			for (Produto product : carrinho) {
				if (product.getEstoque() > 0) {
					valorTotal += product.getEstoque() * product.getValor();
				}
			}
			totalPagamento = pagamento.Pagamento(valorTotal, scan);
			pagamento.notaFiscal(carrinho, totalPagamento);

			System.out.print("\nDESEJA FAZER UMA NOVA COMPRA [S/N]? ");
			opNovaCompra = scan.next().toUpperCase().charAt(0);
			if (opNovaCompra == 'S') {
				op = 'S';
				carrinho.clear();
				valorTotal = 0.0;
				totalPagamento = 0.0;
			}

		} while (opNovaCompra == 'S');
		System.out.print("\n\n┌───── •✧✧• ─────┐");
        System.out.print("\n\n");
        System.out.print("   --ATÉ LOGO--");
        System.out.print("\n\n");
        System.out.print("└───── •✧✧• ─────┘\n");

	}

}