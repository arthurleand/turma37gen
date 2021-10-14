package entities;

public class ContaEmpresa extends Conta {

    private double emprestimoEmpresa;
    
    public ContaEmpresa(int numero, String cpf,double emprestimoEmpresa) {
        super(numero, cpf);
        this.emprestimoEmpresa= emprestimoEmpresa;
    }
    
    public double getEmprestimoEmpresa() {
		return emprestimoEmpresa;
	}


	public void setEmprestimoEmpresa(double emprestimoEmpresa) {
		this.emprestimoEmpresa = emprestimoEmpresa;
	}
   
	public void pedirEmprestimo(double valor) {
		if(valor<emprestimoEmpresa) {
		emprestimoEmpresa-= valor;
		saldo+= valor;
		}else {
			System.out.println("Valor pedido maior que o teto do empréstimo!!");
		}
    }


	
    


}