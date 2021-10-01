import java.text.DecimalFormat;
import java.util.Scanner;

public class LISTA1T5 {

	public static void main(String[] args) {
		
		DecimalFormat df = new DecimalFormat("0.00");
		Scanner scan= new Scanner(System.in);
		double nota1=0.0,nota2=0.0,nota3=0.0,media=0.0;
		
		System.out.print("Digite a 1ª nota: ");
		nota1= scan.nextDouble();
		System.out.print("Digite a 2ª nota: ");
		nota2= scan.nextDouble();
		System.out.print("Digite a 3ª nota: ");
		nota3= scan.nextDouble();
		
		media=((nota1*1)+(nota2*2)+(nota3*3))/(1+2+3);
		
		System.out.print("\nA média do aluno é: "+ df.format(media));
	}

}
