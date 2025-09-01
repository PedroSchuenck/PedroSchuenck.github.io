programa
{
	
	funcao inicio()
	{
		inteiro n1, n2
		escreva("Escreva seu 1° número: ")
		leia(n1)
		escreva("\nEscreva seu 2° número: ")
		leia(n2)
		trocaValores(n1, n2)
		escreva(n1,"\n",n2)
	}
	
	funcao trocaValores(inteiro &n1, inteiro &n2){
		inteiro aux = n1
		n1 = n2
		n2 = aux
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 190; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */