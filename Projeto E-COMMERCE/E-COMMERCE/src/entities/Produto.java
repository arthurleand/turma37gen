package entities;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Produto {
	DecimalFormat df = new DecimalFormat("0.00");
	private String codigo;
	private String nome;
	private double valor;
	private int estoque;
	private int op;

	// CONSTRUTOR
	public Produto(String codigo, String nome, double valor, int estoque) {
		super();
		this.codigo = codigo;
		this.nome = nome;
		this.valor = valor;
		this.estoque = estoque;
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public double getValor() {
		return valor;
	}

	public void setValor(double valor) {
		this.valor = valor;
	}

	public int getEstoque() {
		return estoque;
	}

	public void setEstoque(int estoque) {
		this.estoque = estoque;
	}

	public int getOp() {
		return op;
	}

	public void setOp(int op) {
		this.op = op;
	}

	public double Pagamento(double valorTotal, Scanner scan) {
		double totalPagamento = 0.0;
		while (op < 1 || op > 3) {
			System.out.println("\nEscolha a opção de pagamento");
			System.out.println("\n-------------------------------------------------");
			System.out.println(
					"\n1. À vista com 10% de desconto  (R$" + df.format((valorTotal - (valorTotal * 0.1))) + ")");
			System.out.println(
					"\n2. No cartão com acréscimo de 10% (R$" + df.format((valorTotal + (valorTotal * 0.1))) + ")");
			System.out.println("\n3. 2x no cartão com 15% de acréscimo (2x R$"
					+ df.format((valorTotal + (valorTotal * 0.15)) / 2) + ")");
			System.out.println("\n-------------------------------------------------");
			System.out.println("\nDigite a opção de pagamento: ");
			op = scan.nextInt();
			if (op < 1 || op > 3) {
				System.out.print("\nOpção inválida, tente novamente!!");
			} else if (op == 1) {
				totalPagamento = (valorTotal - (valorTotal * 0.1));
			} else if (op == 2) {
				totalPagamento = (valorTotal + (valorTotal * 0.1));

			} else if (op == 3) {
				totalPagamento = (valorTotal + (valorTotal * 0.15)) / 2;
			}
		}
		return totalPagamento;
	}

	public void notaFiscal(List<Produto> carrinho, double totalPagamento) {
		String nomeLoja = "『G』『2』『-』『G』『E』『E』『K』";
		String slogan = "♥ Dê START no seu estilo ♥";
		if (op == 1) {
			System.out.print("Nota Fiscal");
			System.out.print(
					"\n-------------------------------------------------------------------------------------------------");
			System.out.println();
			System.out.println(nomeLoja);
			System.out.print("\n" + slogan + "\n");
			System.out.print(
					"\nCódigo" + "\t|" + "Nome do Produto" + "\t\t\t\t\t|Valor(R$)Imposto(R$)" + "\t|" + "Quantidade");
			System.out.println(
					"\n-------------------------------------------------------------------------------------------------");
			for (Produto product : carrinho) {
				if (product.getEstoque() > 0) {
					System.out.println(product.getCodigo() + "\t|" + product.getNome() + "\t|" + product.getValor() + "\t\t\t|"
							+ product.getEstoque() + "\n");
				}
			}
			System.out.print(
					"\n-------------------------------------------------------------------------------------------------");
			System.out.print("\nOpção à vista com 10 % de desconto selecionada!!");
			System.out.print("\nO valor total da compra foi: R$" + df.format(totalPagamento));
			System.out.print("\nOBS: Imposto já incluso no valor do produto");
			System.out.print(
					"\n-------------------------------------------------------------------------------------------------");
			op=0;
		}

		if (op == 2) {
			System.out.print("Nota Fiscal");
			System.out.print(
					"\n-------------------------------------------------------------------------------------------------");

			System.out.println();
			System.out.println(nomeLoja);
			System.out.print("\n" + slogan + "\n");
			System.out.print(
					"\nCódigo" + "\t|" + "Nome do Produto" + "\t\t\t\t\t|Valor(R$)Imposto(R$)" + "\t|" + "Quantidade");
			System.out.println(
					"\n-------------------------------------------------------------------------------------------------");
			for (Produto product : carrinho) {
				if (product.getEstoque() > 0) {
					System.out.println(product.getCodigo() + "\t|" + product.getNome() + "\t|" + product.getValor() + "\t\t\t|"
							+ product.getEstoque() + "\n");
				}
			}
			System.out.print(
					"\n-------------------------------------------------------------------------------------------------");
			System.out.print("\nOpção cartão com 10 % de acréscimo selecionada!!");
			System.out.print("\nO valor total da compra foi: R$" + df.format(totalPagamento));
			System.out.print("\nOBS: Imposto já incluso no valor do produto");
			System.out.print(
					"\n-------------------------------------------------------------------------------------------------");
			op=0;
		}

		if (op == 3) {
			System.out.print("Nota Fiscal");
			System.out.print(
					"\n-------------------------------------------------------------------------------------------------");

			System.out.println();
			System.out.println(nomeLoja);
			System.out.print("\n" + slogan + "\n");
			System.out.print(
					"\nCódigo" + "\t|" + "Nome do Produto" + "\t\t\t\t\t|Valor(R$)Imposto(R$)" + "\t|" + "Quantidade");
			System.out.println(
					"\n-------------------------------------------------------------------------------------------------");
			for (Produto product : carrinho) {
				if (product.getEstoque() > 0) {
					System.out.println(product.getCodigo() + "\t|" + product.getNome() + "\t|" + product.getValor() + "\t\t\t|"
							+ product.getEstoque() + "\n");
				}
			}
			System.out.print(
					"\n-------------------------------------------------------------------------------------------------");
			System.out.print("\nOpção 2x no cartão com 15 % de acréscimo selecionada!!");
			System.out.print("\nO valor das parcelas foi: 2x R$" + df.format(totalPagamento));
			System.out.print("\nOBS: Imposto já incluso no valor do produto");
			System.out.print(
					"\n-------------------------------------------------------------------------------------------------");
			op=0;
		}		

	}

}
