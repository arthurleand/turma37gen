package entities;

import java.util.Scanner;

public class ContaEspecial extends Conta {
	private double limite = 1.000;

	public ContaEspecial(int numero, String cpf,double limite) {
		super(numero, cpf);
		this.limite=limite;
	}

	public double getLimite() {
		return limite;
	}

	public double setLimite(double limite) {
		return this.limite = limite;
	}

	public void usarLimite() {
		double valorTirar;
		valorTirar= saldo * -1;
		limite= limite-valorTirar;
		saldo += valorTirar ;
	}
}