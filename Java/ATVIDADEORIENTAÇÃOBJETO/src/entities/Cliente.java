package entities;

import java.util.Scanner;

/**
 * @author arthu
 *
 */
public class Cliente {
	Scanner scan = new Scanner(System.in);
	public String cpf;
	public String nome;
	public int idade;
	public char pronome;
	public boolean antigo;

	public void Antigo(char op) {
		if (op == 'S') {
			antigo=true;
		} else {
			antigo=false;
		}
	}
	public void Pronome(char op) {
		if (op=='1') {
			pronome='o';
        } else if (op=='2') {
        	pronome='a';
        } else {
        	pronome='e';
        }
	}
	@Override
	public String toString() {
		return "Cliente [cpf=" + cpf + ", nome=" + nome + ", idade=" + idade + ", pronome=" + pronome + ", antigo="
				+ antigo + "]";
	}
	
	
}
