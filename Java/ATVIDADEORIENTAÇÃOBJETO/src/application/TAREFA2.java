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
		
		
		System.out.print("Qual o número do avião: ");
		auxnumeroAviao = scan.next();
		av1.setNumeroAviao(auxnumeroAviao);
		System.out.print("Quantos passageiros tem no avião: ");
		auxPassageiros = scan.nextInt();
		av1.setPassageiros(auxPassageiros);
		System.out.print("O avião está voando: ");
		auxOp= scan.next().toUpperCase().charAt(0);
		System.out.print("JANTAR \n1.Misto quente com café \n2.Cuscuz com charque e suco de laranja \n3.Bolo de rolo com capuccino \nDigite o número referente a opção escolhida: ");
		auxOpRefeicao= scan.next().toUpperCase().charAt(0);
		av1.Refeicao(auxOpRefeicao);
		av1.AssentosLivres(auxOp);
		System.out.print("\n"+av1.toString());
		
	}

}
