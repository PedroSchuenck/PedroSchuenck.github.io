programa
{
	
	funcao inicio()
	{
		real n1, n2, soma, produto
		soma = 0.0
		produto = 0.0
		escreva("Digite n1: ")
		leia(n1)
		escreva("\nDigite n2: ")
		leia(n2)
		somaEproduto(n1, n2,soma,produto)
		escreva("Soma: ",soma, " Multiplicação: ",produto)
	}

	funcao somaEproduto(real n1, real n2, real &soma, real &produto){
		soma = n1 + n2
		produto = n1 * n2
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 373; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */