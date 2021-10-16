package applications;

import java.util.ArrayList;
import java.util.List;

import entities.Produto;

public class Loja {

	public static void main(String[] args) {
		String codigo[]={"GK01","GK02","GK03","GK04","GK05","GK06","GK07","GK08","GK09","GK10"};
		String nome[]= {"Camiseta Unissex Duff:Os Simpsons		  ","Camiseta Unissex The Game Master" ,"Camiseta Unissex Superman			  " ,
		"Camiseta Unissex Fortnite                         ","Camiseta Unissex Sonserina: HARRY POTTER          "
		,"Chaveiro Funko Pocket POP R2-D2:STAR WARS         ","Chaveiro Funko Pocket POP Home de ferro:VINGADORES"
		,"Caneca	Trono de ferro: GAME OF THRONES	 	  ","Almofada Geek Mulher maravilha:DC COMICS	  ","Almofada Geek Escudo Hylian: THE LEGEND OF ZELDA  "};
		double valor[] = {11.65,13.95,14.95,15.92,29.90,36.90,44.75,59.90,59.90,59.90};
		int estoque[]={10,10,10,10,10,10,10,10,10,10};
		Produto produto= new Produto(null, null, 0, 0);
		List<Produto> produtoLoja =new ArrayList<>();
		
		for(int x=0; x<codigo.length;x++) {
			produtoLoja.addAll(produto.setCodigo(codigo[x]));
			
		}
	}

}
