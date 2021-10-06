import java.util.Locale;
import java.util.Scanner;

public class DESAFIO1 {

	public static void main(String[] args) {

		Locale.setDefault(Locale.US);
		Scanner scan = new Scanner(System.in);

		String nome;
		char pronome;
		boolean chefaFamilia = false;
		boolean naoOutroAuxilio = true;
		char op;
		int filhos = 0;

		System.out.print("Digite o nome da pessoa : ");
		nome = scan.nextLine();

		System.out.print("Digite o pronome de tratamento A/O/E : ");
		pronome = scan.next().toLowerCase().charAt(0);
		System.out.print("Chefa de familia S/N : ");
		op = scan.next().toUpperCase().charAt(0);
		if (op == 'S') {
			chefaFamilia = true;
		}
		System.out.print("Ja recebeu outro auxilio ? S/N :");
		op = scan.next().toUpperCase().charAt(0);
		if (op == 'S') {
			naoOutroAuxilio = false;
		}
		System.out.print("Quantidade de filhos : ");
		filhos = scan.nextInt();
		calcAux(filhos, op, chefaFamilia, naoOutroAuxilio);

	}

	public static void calcAux(int filhos, char op, boolean chefaFamilia, boolean naoOutroAuxilio) {
		double totalAuxilio = 0.0;
		final double AUXILIO = 600.00;
		final double VALORFILHO = 50.00;

		if (chefaFamilia && naoOutroAuxilio) {
			totalAuxilio = (AUXILIO * 2) + (VALORFILHO * filhos);
			System.out.print("Você receberá: R$" + totalAuxilio);
		} else if (naoOutroAuxilio) {
			totalAuxilio = AUXILIO + (VALORFILHO * filhos);
			System.out.print("Você receberá: R$" + totalAuxilio);
		} else {
			System.out.println("Vc não tem direito ao beneficio!!!");
		}
	}
}
