import java.util.Scanner;

public class LISTA3T6 {

	public static void main(String[] args) {
		Scanner scan= new Scanner(System.in);
		int num=0,cont=-1,soma=0;
		double media=0.0;
		System.out.println("OBS: Para sair do programa digitar 0");
		do {
			System.out.print("Digite um número: ");
			num= scan.nextInt();
			if(num%3==0) {
				soma+=num;
				cont++;
			}
		}while(num!=0);
		media= soma/cont;
		System.out.printf("A média dos números digitados é: %.2f",media);
	}

}
