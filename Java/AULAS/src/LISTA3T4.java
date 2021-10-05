import java.util.Scanner;

public class LISTA3T4 {

	public static void main(String[] args) {
		Scanner scan = new Scanner (System.in);
		int idade=0,sexo=0,estadoMental=0,pessoaCalm=0,mulherNerv=0,
		outrosCalm=0,homemAgres=0,pessoaNerv40=0,pessoaCalm18=0,cont=0;
		
		while(cont<2) {
			System.out.print("Digite sua idade: ");
			idade= scan.nextInt();
			while(idade<0){
				System.out.print("Inválido!! \nTente Novamente: ");
				idade= scan.nextInt();
			}
			System.out.print("SEXO: \n1.MASCULINO \n2.FEMININO \n3.OUTROS \nDigite o número referente ao sexo que você se identifica: ");
			sexo= scan.nextInt();
			while(sexo>=4 || sexo <=0){
				System.out.print("Inválido!! \nTente Novamente: ");
				sexo= scan.nextInt();
			}
			System.out.print("ESTADO MENTAL: \n1.CALMO(A) \n2.NERVORSO(A) \n3.AGRESSIVO(A) \nDigite o número referente ao estado mental que você se identifica: ");
			estadoMental= scan.nextInt();
			while(estadoMental>=4 || estadoMental<=0){
				System.out.print("Inválido!! \nTente Novamente: ");
				estadoMental= scan.nextInt();
			}
			if(estadoMental==1) {
				pessoaCalm++;
			}
			if(sexo==2 && estadoMental==2) {
				mulherNerv++;
			}
			if(sexo==1 & estadoMental==3) {
				homemAgres++;
			}
			if(sexo==3 && estadoMental==1) {
				outrosCalm++;
			}
			if(idade>40 && estadoMental==2) {
				pessoaNerv40++;
			}
			if(idade<18 && estadoMental==1) {
				pessoaCalm18++;
			}
			cont++;
		}
		System.out.println("O número de pessoas calmas é: "+pessoaCalm);
		System.out.println("O número de mulheres nervosas é: "+mulherNerv);
		System.out.println("O número de homens agressivos é: "+ homemAgres);
		System.out.println("O número de outros calmos é: "+ outrosCalm);
		System.out.println("O número de pessoas nervosas com mais de 40 anos é: "+pessoaNerv40);
		System.out.println("O número de pessoas calmas com menos de 18 anos é: "+pessoaCalm18);
	}

}
