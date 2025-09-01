programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		inteiro n
		escreva("Digite seu número: ")
		leia(n)

		se(n != mat.valor_absoluto(n)){ // ou se numero < 0
			escreva("Esse valor é negativo")	
		}
		senao se(n == mat.valor_absoluto(n)){ // ou número > 0
			escreva("Esse valor é positivo")
		}
		senao{
			escreva("Esse valor é nulo") 
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 374; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */