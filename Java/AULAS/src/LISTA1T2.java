import java.util.Scanner;

public class LISTA1T2 {

	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);
		int dia=0,ano=0,mes=0,diaFinal=0,mesFinal=0;
		System.out.print("Digite o valor referente a quantos dias de vida você tem: ");
		dia= scan.nextInt();
		
		diaFinal= dia % 30;
		mes= dia /30;
		ano = mes/12;
		mesFinal= mes - (ano * 12);
		
		System.out.println("Você tem "+ano+" anos, "+mesFinal+" meses e "+diaFinal+" dias.");
	}

}
