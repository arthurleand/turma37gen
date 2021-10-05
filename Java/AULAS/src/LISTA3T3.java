import java.util.Scanner;

public class LISTA3T3 {

	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		int idade=0,idade21=0,idade50=0;
		System.out.println("OBS: Para finalizar o programa digitar que a idade é -99");
		while(idade!= -99) {
			System.out.print("Qual a sua idade: ");
			idade= scan.nextInt();
			if(idade<21 && idade>0) {
				idade21++;
			}
			if(idade>50) {
				idade50++;
			}
		}
		System.out.println("Ao final da pesquisa os dados coletados foram:");
		System.out.printf("Pessoas Menores de 21 Anos: %d", idade21);
		System.out.printf("\nPessoas Maiores de 50 Anos: %d", idade50);
	}

}
