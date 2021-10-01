import java.util.Scanner;

public class LISTA1T3 {

	public static void main(String[] args) {
		
		Scanner scan= new Scanner(System.in);
		int seg=0,hora=0,min=0,segFinal=0,minFinal;
		
		System.out.print("Digite a duração do evento em segundos: ");
		seg= scan.nextInt();
		
		segFinal= seg % 60;
		min= seg / 60;
		hora= min/60;
		minFinal= min- (hora * 60);
		
		if(segFinal==1) {
			System.out.println("O evento durou "+hora+" horas, "+ minFinal+ " minutos e "+ segFinal+" segundo.");
		}
		else{
			System.out.println("O evento durou "+hora+" horas, "+ minFinal+ " minutos e "+ segFinal+" segundos.");
		}
	}

}
