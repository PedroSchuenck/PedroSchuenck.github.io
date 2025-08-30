programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		real tempo
		escreva("Tempo da ligação: ")
		leia(tempo)

		escreva(mat.potencia(tempo,3) * 0.01 + 1.25 * 0.88 + 4 * tempo)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 199; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */