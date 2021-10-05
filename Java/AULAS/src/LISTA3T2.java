import java.util.Scanner;

public class LISTA3T2 {
	public static void main(String[] args) {
		Scanner scan= new Scanner(System.in);
		int num=0,par=0,impar=0;
		for(int x=0; x<10;x++) {
			System.out.print("Digite um número: ");
			num= scan.nextInt();
			if(num%2==0) {
				par++;
			}
			else {
				impar++;
			}
		}
		System.out.printf("Destes números %d são pares e %d são ímpares.",par,impar);
	}
}
