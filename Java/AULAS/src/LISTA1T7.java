import java.text.DecimalFormat;
import java.util.Scanner;

public class LISTA1T7 {

	public static void main(String[] args) {
		
		Scanner scan= new Scanner(System.in);
		DecimalFormat df = new DecimalFormat("0.00");
		double a=0.0,b=0.0,c=0.0,d=0.0,e=0.0,f=0.0,x=0.0,y=0.0;
		
		System.out.println("Digite o valor de a: ");
		a= scan.nextDouble();
		System.out.println("Digite o valor de b: ");
		b= scan.nextDouble();
		System.out.println("Digite o valor de c: ");
		c= scan.nextDouble();
		System.out.println("Digite o valor de d: ");
		d= scan.nextDouble();
		System.out.println("Digite o valor de e: ");
		e= scan.nextDouble();
		System.out.println("Digite o valor de f: ");
		f= scan.nextDouble();
		
		x=((c*e)-(b*f))/((a*e)-(b*d));
		y=((a*f)-(c*d))/((a*e)-(b*d));
		
		System.out.println("X é igual a = "+ df.format(x));
		System.out.println("Y é igual a = "+ df.format(y));		
	}

}
