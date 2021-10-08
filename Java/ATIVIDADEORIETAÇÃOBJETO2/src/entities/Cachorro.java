package entities;

public class Cachorro extends Animal {
	
	
	
	public Cachorro(String nome, int idade) {
		super(nome, idade);
	
	}
	 public String Latir(){ 
		return "au! au! au! "; 
	 }
	 public String Correr() {
		return "Correndo!!!";
	 }
	
}
