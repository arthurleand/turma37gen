programa
{
	funcao inicio()
	{
		inteiro numFilho=0,totalNumFilho=0
		real salario=0.0,mediaSal=0.0,totalSal=0.0,mediaNumFilho=0.0,maiorSal=0.0,percPessoa=0.0,salMaiorCem=0.0

		para(inteiro i=1;i<=20;i++){

			escreva("Digite o seu sálario: R$")
			leia(salario)
			escreva("Digite o calor referente a quantidade de filhos que você tem: ")
			leia(numFilho)
			totalSal= totalSal + salario
			totalNumFilho= totalNumFilho + numFilho
			se(maiorSal<salario){
				maiorSal= salario
			}
			se(salario>100){
				salMaiorCem++			
			}
			limpa()			
		}
		mediaSal = totalSal/2
		mediaNumFilho= totalNumFilho/2.0
		percPessoa= (salMaiorCem*100)/20

		escreva("A média do sário da população é: R$", mediaSal)
		escreva("\nA média de número de filhos é: ", mediaNumFilho)
		escreva("\nO maior salário é: R$", maiorSal)
		escreva("\nO percentual de pessoas que recebem mais de 100 reais é de: ",percPessoa,"%")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 540; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */