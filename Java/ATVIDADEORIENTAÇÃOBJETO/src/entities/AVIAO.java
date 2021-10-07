package entities;

public class AVIAO {
	//Attributes
	private int passageiros,assentosVagos;
	private char opRefeicao,opVoando;
	private String nomeCapitao,numeroAviao;
	//Constructor
	public AVIAO(int passageiros, int assentosVagos, boolean voando, char opRefeicao, String nomeCapitao,
			String numeroAviao, char opVoando) {
		super();
		this.passageiros = passageiros;
		this.assentosVagos = assentosVagos;
		this.opRefeicao = opRefeicao;
		this.nomeCapitao = nomeCapitao;
		this.numeroAviao = numeroAviao;
		this.opVoando= opVoando;
	}
	//Get-Set
	public int getPassageiros() {
		return passageiros;
	}

	
	public void setPassageiros(int passageiros) {
		this.passageiros = passageiros;
	}
	public char getOpVoando() {
		return opVoando;
	}
	public void setOpVoando(char opVoando) {
		this.opVoando = opVoando;
	}
	public char getOpRefeicao() {
		return opRefeicao;
	}
	public void setOpRefeicao(char opRefeicao) {
		this.opRefeicao = opRefeicao;
	}

	public int getAssentosVagos() {
		return assentosVagos;
	}

	public void setAssentosVagos(int assentosVagos) {
		this.assentosVagos = assentosVagos;
	}

	public String getNomeCapitao() {
		return nomeCapitao;
	}

	public void setNomeCapitao(String nomeCapitao) {
		this.nomeCapitao = nomeCapitao;
	}
	public String getNumeroAviao() {
		return numeroAviao;
	}

	public void setNumeroAviao(String numeroAviao) {
		this.numeroAviao = numeroAviao;
	}
	//Methods
	
	public void AssentosLivres(char op){
		if(op=='S') {
			opVoando=op;
			assentosVagos= 100-passageiros;
			System.out.print("\nNo aviao "+numeroAviao+" tem "+assentosVagos+" assentos vagos.");
		}
	}
	public void Refeicao(char op) {
		if(op=='1') {
			opRefeicao=op;
			System.out.print("\nA opção selecionada foi Misto quente com café.");
		}
		else if(op=='2') {
			opRefeicao=op;
			System.out.print("\nA opção selecionada foi Cuscuz com charque e suco de laranja.");
		}
		else {
			opRefeicao=op;
			System.out.print("\nA opção selecionada foi Bolo de rolo com capuccino.");
		}
	}
	
	//To String
	public String toString() {
		return "AVIAO [passageiros=" + passageiros + ", assentosVagos=" + assentosVagos + ", opRefeicao=" + opRefeicao
				+ ", opVoando=" + opVoando + ", nomeCapitao=" + nomeCapitao + ", numeroAviao=" + numeroAviao + "]";
	}

}
