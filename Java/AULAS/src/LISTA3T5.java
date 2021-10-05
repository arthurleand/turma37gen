import java.util.Scanner;

public class LISTA3T5 {
	public static void main(String[] args){
		Scanner scan= new Scanner(System.in);
		int num=0,soma=0;
		do {
			System.out.print("Digite um número: ");
			num= scan.nextInt();
			soma+=num;
		}while(num!=0);
		System.out.printf("A soma dos números digitados é: %d",soma);
	}
}
