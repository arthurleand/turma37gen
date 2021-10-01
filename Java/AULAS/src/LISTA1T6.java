import java.text.DecimalFormat;
import java.util.Scanner;

public class LISTA1T6 {

	public static void main(String[] args) {
		
		Scanner scan= new Scanner(System.in);
		DecimalFormat df = new DecimalFormat("0.00");
		double x1=0.0,x2=0.0,y1=0.0,y2=0.0,d=0.0;
		
		System.out.println("Digite o valor de x1: ");
		x1 = scan.nextDouble();
		System.out.println("Digite o valor de x2: ");
		x2 = scan.nextDouble();
		System.out.println("Digite o valor de y1: ");
		y1 = scan.nextDouble();
		System.out.println("Digite o valor de y2: ");
		y2 = scan.nextDouble();
		
		d=Math.pow((x2-x1), 2)+Math.pow((y2-y1), 2);
		
		System.out.println("O valor da distância entre os pontos é de: " +df.format(Math.sqrt(d)));
	}

}
