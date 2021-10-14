package entities;

public class ContaEstudantil extends Conta {

	private double limiteEstudantil;

	public ContaEstudantil(int numero, String cpf, double limiteEstudantil) {
		super(numero, cpf);
		this.limiteEstudantil = limiteEstudantil;

	}

	public double getLimiteEstudantil() {
		return limiteEstudantil;
	}

	public void setLimiteEstudantil(double limiteEstudantil) {
		this.limiteEstudantil = limiteEstudantil;
	}

	public void usarEstudantil(double valor) {

		limiteEstudantil -= valor;
		saldo += valor;
	}

}