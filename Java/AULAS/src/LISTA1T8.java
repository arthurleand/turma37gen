import java.text.DecimalFormat;
import java.util.Scanner;

public class LISTA1T8 {

	public static void main(String[] args) {
		
		Scanner scan= new Scanner(System.in);
		DecimalFormat df = new DecimalFormat("0.00");
		double custoFab=0.0,custoCons=0.0;
		
		System.out.print("Digite o custo de fábrica do veículo: R$ ");
		custoFab= scan.nextDouble();
		custoCons= custoFab +(custoFab*0.28)+(custoFab*0.45);
		System.out.println("O valor do carro para o consumidor é: R$ " + df.format(custoCons));
	}

}
