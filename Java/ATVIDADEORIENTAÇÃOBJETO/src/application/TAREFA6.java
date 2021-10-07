package application;

import java.util.Scanner;

import entities.ContaBancaria;

public class TAREFA6 {

	public static void main(String[] args) {
		Scanner scan= new Scanner(System.in);
		ContaBancaria cc1= new ContaBancaria(null,false);
		String cpf;
		boolean ativar;
		char opAtivar,opOperacao;
		double valor;
		
		System.out.print("Digite seu cpf: ");
		cpf=scan.next();
		cc1.setCpf(cpf);
		System.out.print("Deseja ativar sua conta: ");
		opAtivar= scan.next().toUpperCase().charAt(0);
		if(opAtivar=='S'){
			ativar=true;
			cc1.setAtiva(ativar);
		}
		cc1.Ativar();
		System.out.print("\nOperação: \n1-Depósito \n2-Saque \nDigite o número referente a opção desejada: ");
		opOperacao=scan.next().toUpperCase().charAt(0);
		System.out.print("Digite o valor referente a opção selecionada: ");
		valor= scan.nextDouble();
		cc1.Operacao(opOperacao, valor);
		System.out.println(cc1.toString());
	}

}
