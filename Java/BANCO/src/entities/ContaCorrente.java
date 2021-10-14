package entities;

import java.util.Scanner;

public class ContaCorrente extends Conta {
	private Scanner scan = new Scanner(System.in);
	private int contadorTalao;

	public ContaCorrente(int numero, String cpf, int contadorTalao) {
		super(numero, cpf);
		this.contadorTalao = contadorTalao;
	}

	public int getContadorTalao() {
		return contadorTalao;
	}

	public void setContadorTalao(int contadorTalao) {
		this.contadorTalao = contadorTalao;
	}

	public char pedirTalao(char op){
		if(op=='S' && contadorTalao < 3 ) {
			contadorTalao++;
			return 'S';
		}
		else{
			System.out.println("Você já atingiu o limite de 3 talões!!");
			return'N';
		}
	}

	public void debito() {
		this.saldo = this.saldo - (contadorTalao* 30.0);
	}

}
