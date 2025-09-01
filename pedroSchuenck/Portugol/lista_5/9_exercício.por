programa
{
	
	funcao inicio()
	{
		inteiro n, resultado
		escreva("Digite um número: ")
		leia(n)
		resultado = ultimoDigito(n)
		escreva("O ultimo dígito desse número é: ",resultado)
	}

	funcao inteiro ultimoDigito(inteiro n){
		inteiro ultDigito = n  % 10
		retorne ultDigito
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 0; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */