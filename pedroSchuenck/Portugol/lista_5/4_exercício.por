programa
{
	
	funcao inicio()
	{
		inteiro n1, n2, n3, soma, media
		escreva("Número 1: ")
		leia(n1)
		escreva("Número 2: ")
		leia(n2)
		escreva("Número 3: ")
		leia(n3)
		soma = calculaSoma(n1,n2,n3)
		media = calculaMedia(n1,n2,n3)
		escreva("A soma dos números é: ",soma, "\nA média dos números é: ",media)
		
	}

	funcao  inteiro calculaSoma(inteiro n1, inteiro n2, inteiro n3){
		inteiro resultado = n1 + n2 + n3
		retorne resultado
	}
	funcao inteiro calculaMedia(inteiro n1, inteiro n2, inteiro n3){
		inteiro resultado = (n1 + n2 + n3) / 3
		retorne resultado
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 323; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */