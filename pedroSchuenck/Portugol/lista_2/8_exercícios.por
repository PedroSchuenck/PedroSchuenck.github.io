programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		real absolutoN, senoN, raizN, potenciaN, logN
		potenciaN = 4
		absolutoN = -4
		raizN = 25
		senoN = 0.0
		logN = 100
	
		escreva("Absoluto: ",mat.valor_absoluto(absolutoN))
		escreva("\nPotencia: ",mat.potencia(potenciaN, 2))
		escreva("\nRaiz: ", mat.raiz(raizN, 2))
		escreva("\nSeno: ", mat.seno(senoN))
		escreva("\nLog: ", mat.logaritmo(logN, 10))
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 433; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */