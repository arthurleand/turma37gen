import java.util.Scanner;

public class LISTA4T1 {

	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		double pontuacao[]= new double[5],maior=0;
		
		for(int x=0;x<5;x++) {
			System.out.print("Digite a "+(x+1)+"ª pontuação da atividade: ");
			pontuacao[x]=scan.nextDouble();
			if(pontuacao[x]>maior) {
				maior=pontuacao[x];
			}
		}
		System.out.println("A maior pontuação é: "+maior);

	}

}
