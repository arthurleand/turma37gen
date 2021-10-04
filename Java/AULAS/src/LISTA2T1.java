import java.util.Scanner;

public class LISTA2T1 {

	public static void main(String[] args) {
		Scanner scan=new Scanner(System.in);
		int n1=0,n2=0,n3=0,maior=0;
		
		System.out.print("Digite o 1º número: ");
		n1= scan.nextInt();
		System.out.print("Digite o 2º número: ");
		n2= scan.nextInt();
		System.out.print("Digite o 3º número: ");
		n3= scan.nextInt();
		if(n1>maior) {			
			maior=n1;
		}
		if(n2>maior) {
			maior=n2;
		}
		if(n3>maior) {
			maior=n3;
		}
		System.out.printf("O maior número é %d",maior);
	}

}
