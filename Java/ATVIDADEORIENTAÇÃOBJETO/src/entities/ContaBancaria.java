package entities;

public class ContaBancaria {
	private double saldo = 0.0;
	private String cpf;
	boolean ativa;

	public ContaBancaria(String cpf, boolean ativa) {
		super();
		this.cpf = cpf;
		this.ativa = ativa;
	}

	public double getSaldo() {
		return saldo;
	}

	public void setSaldo(double saldo) {
		this.saldo = saldo;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public boolean isAtiva() {
		return ativa;
	}

	public void setAtiva(boolean ativa) {
		this.ativa = ativa;
	}

	public void Ativar() {
		if (ativa) {
			System.out.print("\nConta Ativada!!");
		} else {
			System.out.print("\nConta NÃO Ativada!! \n Até Logo!!");
			System.exit(0);
		}
	}

	public void Operacao(char op, double valor) {
		if (op == '1' && valor > 0) {
			this.saldo += valor;
			System.out.printf("\nSeu saldo é R$%.2f", saldo);
		} else if (op == '2' && valor > 0) {
			saldo -= valor;
			System.out.printf("\nSeu saldo é R$%.2f", saldo);
			if (saldo < 0) {
				System.out.print("\nVocê entrou no cheque especial!!");
			}
		}
	}

	@Override
	public String toString() {
		return "\nContaBancaria [saldo=" + saldo + ", cpf=" + cpf
				+ ", ativa=" + ativa + "]";
	}

}
