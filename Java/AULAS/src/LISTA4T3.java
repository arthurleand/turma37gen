import java.util.Scanner;

public class LISTA4T3 {

	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		int n1[][] = new int[2][2], n2[][] = new int[2][2], m1[][] = new int[2][2], m2[][] = new int[2][2];

		for (int line = 0; line < 2; line++) {
			for (int column = 0; column < 2; column++) {
				System.out.print("Digite o valor da matriz n1 na linha " + (line + 1) + " coluna " + (column + 1) + ": ");
				n1[line][column] = scan.nextInt();
			}
		}
		for (int line = 0; line < 2; line++) {
			for (int column = 0; column < 2; column++) {
				System.out.print("Digite o valor da matriz n2 na linha " + (line + 1) + " coluna " + (column + 1) + ": ");
				n2[line][column] = scan.nextInt();
			}
		}
		for (int line = 0; line < 2; line++) {
			for (int column = 0; column < 2; column++) {
				m1[line][column] = n1[line][column] + n2[line][column];
			}
		}
		for (int line = 0; line < 2; line++) {
			for (int column = 0; column < 2; column++) {
				m2[line][column] = n1[line][column] - n2[line][column];
			}
		}
	}
}
