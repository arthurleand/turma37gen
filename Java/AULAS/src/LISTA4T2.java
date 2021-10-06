import java.util.Scanner;

public class LISTA4T2 {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		int dado[] = new int[10], maiorPont = 0, contMaiorPont = 0, soma = 0;
		double media = 0.0;

		for (int x = 0; x < 10; x++) {
			System.out.print("Digite o " + (x + 1) + "º dado: ");
			dado[x] = scan.nextInt();
			soma += dado[x];
			if (dado[x] >= maiorPont) {
				if (dado[x] > maiorPont) {
					contMaiorPont = 0;
					maiorPont = dado[x];
				}
				if (dado[x] == maiorPont) {
					contMaiorPont++;
				}
			}
		}
		media = soma / 10;
		System.out.println("A média dos dados digitados é: " + media);
		System.out.println("A maior pontuação apareceu " + contMaiorPont + " vezes.");
	}
}
