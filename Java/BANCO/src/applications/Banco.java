package applications;

import java.util.Scanner;

import entities.ContaCorrente;
import entities.ContaEmpresa;
import entities.ContaEspecial;
import entities.ContaEstudantil;
import entities.ContaPoupanca;

public class Banco {

	public static void main(String[] args) {
		ContaCorrente cc1 = new ContaCorrente(2548, "104.220.558-85", 0);
		ContaPoupanca cp1 = new ContaPoupanca(0245, "1523", 20);
		ContaEspecial ce1 = new ContaEspecial(1223, "1235", 1000.0);
		ContaEmpresa cemp1 = new ContaEmpresa(2545, "4564", 10000.00);
		ContaEstudantil cest1= new ContaEstudantil(7894, "2584", 5000.0);
		Scanner scan = new Scanner(System.in);
		int opTipoConta, contador = 0, diaAtual = 20;
		char opConti;
		char opMovi, op;
		double valor, valorEmp;
		System.out.println("[G2-BANK]");
		System.out.println("[DÊ UM START NA SUA VIDA FINANCEIRA]");
		System.out.println();

		System.out.println("1- CONTA POUPANÇA");
		System.out.println("2- CONTA CORRENTE");
		System.out.println("3- CONTA ESPECIAL");
		System.out.println("4- CONTA EMPRESA");
		System.out.println("5- CONTA ESTUDANTIL");
		System.out.println("6- SAIR");
		System.out.println();
		System.out.print("DIGITE O CÓDIGO DA OPÇÃO SELECIONADA: ");
		opTipoConta = scan.nextInt();

		while (opTipoConta < 1 || opTipoConta > 6) {
			System.out.println("OPÇÃO INVÁLIDA!");
			System.out.print("ESCOLHA UMA OPÇÃO VÁLIDA: ");
			opTipoConta = scan.nextInt();
		}
		if(opTipoConta==6) {
			System.exit(0);
		}
		System.out.println("[G2-BANK]");
		System.out.println("[DÊ UM START NA SUA VIDA FINANCEIRA]");

		if (opTipoConta == 1) {
			do {
				System.out.println("CONTA [CONTA POUPANÇA]");
				System.out.println(
						"Saldo Atual: R$" + cp1.getSaldo() + "Todo dia do aniversário da Poupança ela rende 0.0005% ");
				System.out.print("Movimento - D-débito C-crédito: ");
				opMovi = scan.next().toUpperCase().charAt(0);
				System.out.print("Valor Movimento: R$");
				valor = scan.nextDouble();
				if (opMovi == 'D') {
					cp1.debito(valor);
				}
				if (opMovi == 'C') {
					cp1.credito(valor);
				}
				System.out.println("Continuar S-sim N-não : ");
				opConti = scan.next().toUpperCase().charAt(0);
				contador++;
				if (contador == 10) {
					System.out.println("Limite Atingido!! Seu saldo final é: R$" + cp1.getSaldo());
				}
			} while (opConti == 'S' && contador < 10);
			cp1.correção(diaAtual);
			if (cp1.getDiaAniversarioPoupanca() == diaAtual) {
				System.out.println("Hoje é o dia do aniversário da sua conta seu saldo atualizado com bônus é: R$"
						+ cp1.getSaldo());
			}
		}
		if (opTipoConta == 2) {
			do {
				System.out.println("CONTA [CONTA CORRENTE]");
				System.out.println(
						"Saldo Atual: R$" + cc1.getSaldo() + " Talões liberados: " + (3 - cc1.getContadorTalao()));
				System.out.print("Movimento - D-débito C-crédito: ");
				opMovi = scan.next().toUpperCase().charAt(0);
				System.out.print("Valor Movimento: R$");
				valor = scan.nextDouble();
				if (opMovi == 'D') {
					cc1.debito(valor);
				}
				if (opMovi == 'C') {
					cc1.credito(valor);
				}
				System.out.println("Continuar S-sim N-não : ");
				opConti = scan.next().toUpperCase().charAt(0);
				contador++;
				if (contador == 10) {
					System.out.println("Limite Atingido!! Seu saldo final é: R$" + cc1.getSaldo());
				}
			} while (opConti == 'S' && contador < 10);
			System.out.println("Desejar pegar um talão de cheque S/N: ");
			op = scan.next().toUpperCase().charAt(0);
			op = cc1.pedirTalao(op);
			while (op == 'S') {
				System.out.println("Desejar pegar outro talão de cheque S/N: ");
				op = scan.next().toUpperCase().charAt(0);
				op = cc1.pedirTalao(op);

			}
			cc1.debito();
			System.out.println(
					"Você pegou " + cc1.getContadorTalao() + " talões seu saldo final é: R$ " + cc1.getSaldo());
		}
		if (opTipoConta == 3) {
			do {
				System.out.println("CONTA [CONTA ESPECIAL]");
				System.out.println(
						"Saldo Atual: R$" + ce1.getSaldo() + "Você tem um limite especial de R$" + ce1.getLimite());
				System.out.print("Movimento - D-débito C-crédito: ");
				opMovi = scan.next().toUpperCase().charAt(0);
				System.out.print("Valor Movimento: R$");
				valor = scan.nextDouble();
				if (opMovi == 'D') {
					ce1.debito(valor);
				}
				if (opMovi == 'C') {
					ce1.credito(valor);
				}
				if (ce1.getSaldo() < 0) {
					ce1.usarLimite();
				}
				System.out.println("Continuar S-sim N-não : ");
				opConti = scan.next().toUpperCase().charAt(0);
				contador++;
				if (contador == 10) {
					System.out.println("Limite Atingido!! Seu saldo final é: R$" + ce1.getSaldo());
				}
			} while (opConti == 'S' && contador < 10);
			System.out.println("Você utilizou R$" + (1000 - ce1.getLimite()) + " do seu limite e seu saldo atual é: R$"
					+ ce1.getSaldo());
		}
		if (opTipoConta == 4) {
			do {
				System.out.println("CONTA [CONTA EMPRESA]");
				System.out.println("Saldo Atual: R$" + cemp1.getSaldo() + " Valor emprestimo liberado: "
						+ cemp1.getEmprestimoEmpresa());
				System.out.print("Movimento - D-débito C-crédito: ");
				opMovi = scan.next().toUpperCase().charAt(0);
				System.out.print("Valor Movimento: R$");
				valor = scan.nextDouble();
				if (opMovi == 'D') {
					cemp1.debito(valor);
				}
				if (opMovi == 'C') {
					cemp1.credito(valor);
				}
				System.out.println("Continuar S-sim N-não : ");
				opConti = scan.next().toUpperCase().charAt(0);
				contador++;
				if (contador == 10) {
					System.out.println("Limite Atingido!! Seu saldo final é: R$" + cemp1.getSaldo());
				}
			} while (opConti == 'S' && contador < 10);
			System.out.print("Você deseja solicitar um empréstimo: ");
			op = scan.next().toUpperCase().charAt(0);
			if (op == 'S') {
				System.out.print("Digite o valor do empréstimo: R$");
				valorEmp = scan.nextDouble();
				cemp1.pedirEmprestimo(valorEmp);
			}
			System.out.println("Obrigado, seu saldo final é R$"+cemp1.getSaldo()+" e o seu limite de empréstimo é R$"+cemp1.getEmprestimoEmpresa());
		}
		if (opTipoConta == 5) {
			do {
				System.out.println("CONTA [CONTA ESTUDANTIL]");
				System.out.println(
						"Saldo Atual: R$" + cest1.getSaldo() + " limite liberado: " + cest1.getLimiteEstudantil());
				System.out.print("Movimento - D-débito C-crédito: ");
				opMovi = scan.next().toUpperCase().charAt(0);
				System.out.print("Valor Movimento: R$");
				valor = scan.nextDouble();
				if (opMovi == 'D') {
					cest1.debito(valor);
				}
				if (opMovi == 'C') {
					cest1.credito(valor);
				}
				System.out.println("Continuar S-sim N-não : ");
				opConti = scan.next().toUpperCase().charAt(0);
				contador++;
				if (contador == 10) {
					System.out.println("Limite Atingido!! Seu saldo final é: R$" + cc1.getSaldo());
				}
			} while (opConti == 'S' && contador < 10);
			System.out.print("Você deseja solicitar um empréstimo: ");
			op = scan.next().toUpperCase().charAt(0);
			if (op == 'S') {
				System.out.print("Digite o valor do empréstimo: R$");
				valorEmp = scan.nextDouble();
				cest1.usarEstudantil(valorEmp);
			}
			System.out.println("Obrigado, seu saldo final é R$"+cest1.getSaldo()+" e o seu limite de empréstimo é R$"+cest1.getLimiteEstudantil());
		}
	}
}
