import java.util.Scanner;

public class LISTA2T4 {

	public static void main(String[] args) {
		Scanner scan= new Scanner (System.in);
		int num=0;
		System.out.print("Escreva um n�mero: ");
		num= scan.nextInt();
		if(num==2) {
			System.out.printf("O n�mero %d � par e a sua raiz quadrada � %.2f",num,Math.sqrt(num));
		}
		else if(num%2==0) {
			System.out.printf("O n�mero %d � par e a sua raiz quadrada � %.0f",num,Math.sqrt(num));
		}
		else {
			System.out.printf("O n�mero %d � impar e o seu valor elevado ao quadrado � %.0f",num,Math.pow(num,2));
		}
	}

}
