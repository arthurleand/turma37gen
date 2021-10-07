package application;

import java.util.Scanner;

import entities.Cliente;

public class TAREFA1 {

	public static void main(String[] args) {
		Cliente c01= new Cliente();
		Scanner scan= new Scanner(System.in);
		char opAntigo,opPronome;
				
		System.out.print("Digite o nome do cliente: ");
		c01.nome= scan.next();
		System.out.print("Digite o cpf do cliente: ");
		c01.cpf= scan.next();
		System.out.print("O cliente já comprou na loja antes: ");
		opAntigo= scan.next().toUpperCase().charAt(0);
		c01.Antigo(opAntigo);
		System.out.print("Pronome: \n1.O \n2.A \n3.E \nDigite como deseja ser tratado: ");
		opPronome= scan.next().charAt(0);
		c01.Pronome(opPronome);
		
		System.out.println(c01.toString());
		

	}

}
