import java.util.Arrays;
import java.util.Scanner;

public class LISTA2T2 {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		int num[]=new int[3];
		for(int x=0;x<3;x++) {
			System.out.print("Digite o valor do "+(x+1)+"� n�mero: ");
			num[x]=scan.nextInt();
		}
		Arrays.sort(num);
		System.out.print("Os n�meros em ordem crescente s�o:");
		for(int x=0;x<3;x++) {
			System.out.print(" "+num[x]);
		}
	}
}
