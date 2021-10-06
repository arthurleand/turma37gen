import java.util.Scanner;

public class LISTA4T4 {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		int matriz[][] = new int[3][3];
		int somaTotal = 0, somaDiag = 0;

		for (int line = 0; line < 3; line++) {
			for (int column = 0; column < 3; column++) {
				System.out.print("Digite o valor da matriz na linha " + (line + 1) + " coluna " + (column + 1) + ": ");
				matriz[line][column] = scan.nextInt();
				somaTotal += matriz[line][column];
				if (line == column) {
					somaDiag += matriz[line][column];
				}
			}
		}
		System.out.println("A soma dos valores da matriz é: " + somaTotal);
		System.out.println("A soma dos valores da diagonal principal da matriz é: " + somaDiag);
	}
}
