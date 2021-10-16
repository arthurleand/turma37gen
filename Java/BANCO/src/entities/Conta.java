package entities;

public abstract class Conta {
	private int numero;
	private String cpf;
	protected double saldo;
	private boolean ativa;

	public Conta(int numero, String cpf) {
		super();
		this.numero = numero;
		this.cpf = cpf;
	}

	public int getNumero() {
		return numero;
	}

	public void setNumero(int numero) {
		this.numero = numero;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public double getSaldo() {
		return saldo;
	}

	public boolean isAtiva() {
		return ativa;
	}

	public void setAtiva(boolean ativa) {
		this.ativa = ativa;
	}

	public void ativar(char op) {
		if (op == 1) {
			ativa = true;
			System.out.println("Conta Ativa!!");
		} else {
			ativa = false;
		}
	}

	public void debito(double valor) {
		if (valor <= 0) {
			System.out.println("Impossivel Realizar!!");
		} else if (saldo < valor) {
			System.out.println("Saldo Indísponivel!!");
		} else if (saldo >= valor) {
			saldo -= valor;
		}
	}

	public void credito(double valor) {
		if (valor <= 0) {
			System.out.println("Impossivel Realizar!!");
		} else {
			saldo += valor;
		}
	}
}
