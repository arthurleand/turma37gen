
public class LISTA3T1 {
	public static void main(String[] args) {
		System.out.print("Os números entre 1000 e 1999 que dividido por 11 o resto é 5 são:");
		for(int x=1000; x<=1999; x++) {
			if(x%11==5) {
				System.out.print(" "+x);
			}
		}
	}
}
