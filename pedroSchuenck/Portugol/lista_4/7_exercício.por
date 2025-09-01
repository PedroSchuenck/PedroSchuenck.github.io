programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		real l1,l2,l3
		logico verifica
		escreva("lado 1: \n")
		leia(l1)
		escreva("lado 2: \n")
		leia(l2)
		escreva("lado 3: \n")
		leia(l3)

		verifica = l3 < (l1 + l2) e l2 < (l1 + l3) e l1 < (l3 + l2) e l3 > mat.valor_absoluto((l1 - l2)) e l2 > mat.valor_absoluto((l1 - l3)) e l1 > mat.valor_absoluto((l3 - l2))

		escreva("Os lado formam um triângulo ? ", verifica)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 448; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */