package application;

import java.util.Scanner;

import entities.AVIAO;

public class TAREFA2 {

	public static void main(String[] args) {
		Scanner scan= new Scanner(System.in);
		AVIAO av1= new AVIAO(0,0,false,'n',null,null,'N');
		String auxnumeroAviao;
		int auxPassageiros;
		char auxOp,auxOpRefeicao;
		
		
		System.out.print("Qual o n�mero do avi�o: ");
		auxnumeroAviao = scan.next();
		av1.setNumeroAviao(auxnumeroAviao);
		System.out.print("Quantos passageiros tem no avi�o: ");
		auxPassageiros = scan.nextInt();
		av1.setPassageiros(auxPassageiros);
		System.out.print("O avi�o est� voando: ");
		auxOp= scan.next().toUpperCase().charAt(0);
		System.out.print("JANTAR \n1.Misto quente com caf� \n2.Cuscuz com charque e suco de laranja \n3.Bolo de rolo com capuccino \nDigite o n�mero referente a op��o escolhida: ");
		auxOpRefeicao= scan.next().toUpperCase().charAt(0);
		av1.Refeicao(auxOpRefeicao);
		av1.AssentosLivres(auxOp);
		System.out.print("\n"+av1.toString());
		
	}

}
