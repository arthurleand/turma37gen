import java.util.Scanner;

public class LISTA2T3 {
	public static void main(String[] args) {
		Scanner scan= new Scanner (System.in);
		int idade=0;
		
		System.out.print("Digite a sua idade: ");
		idade= scan.nextInt();
		if(idade<10){
			System.out.println("Você é muito novo(a) para entrar em uma categoria");
		}
		else if(idade>=10 && idade<=14) {
			System.out.println("Categoria Infantil!!");
		}
		else if(idade>=15 && idade<=17) {
			System.out.println("Categoria Juvenil!!");
		}
		else if(idade>=18 && idade<=25){
			System.out.println("Categoria Adulto!!");
		}
		else {
			System.out.println("Você é muito velho(a) para se encaixar em uma das categorias.");
		}
	}
}