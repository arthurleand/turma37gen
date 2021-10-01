import java.util.Scanner;

public class LISTA1T4 {

	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);
		int a=0,b=0,c=0,d=0,r=0,s=0;
		
		System.out.print("Digite o valor de A: ");
		a = scan.nextInt();
		System.out.print("Digite o valor de A: ");
		b = scan.nextInt();
		System.out.print("Digite o valor de A: ");
		c = scan.nextInt();
		
		s= (int) Math.pow((b+c), 2);
		r= (int) Math.pow((a+c), 2);
		d= (r+s)/2;
		
		System.out.println("O valor de D é "+d+".");		
	}

}
