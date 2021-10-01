import java.util.Scanner;

public class LISTA1T1 {

	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);
		int dia=0,ano=0,mes=0,diaFinal=0;
		
		System.out.print("Digite quantos anos você tem: ");
		ano= scan.nextInt();
		System.out.print("\nDigite quantos meses você tem: ");
		mes= scan.nextInt();
		System.out.print("\nDigite quantos dias você tem: ");
		dia= scan.nextInt();
		
		diaFinal= dia+(mes*30)+(ano*365);
		
		System.out.print("\nVocê tem "+diaFinal+" dias de vida.");
	}

}
