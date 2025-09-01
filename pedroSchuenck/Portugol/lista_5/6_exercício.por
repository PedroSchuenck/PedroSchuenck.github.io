programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		inteiro a, b, c
		real resultado
		escreva("Digite A: ")
		leia(a)
		escreva("Digite B: ")
		leia(b)
		escreva("Digite C: ")
		leia(c)
		resultado = delta(a,b,c)
		escreva("O resultado de delta é: ",resultado)
	}

	funcao real delta(inteiro a, inteiro b, inteiro c){
		real delta = mat.potencia(b, 2) - 4 * a * c
		retorne delta
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 406; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */