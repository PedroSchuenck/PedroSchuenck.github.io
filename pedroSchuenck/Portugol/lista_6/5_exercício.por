programa
{
		inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro dado1, dado2
		dado1 = 0
		dado2 =0
		dado1 = Util.sorteia(1, 6)
		dado2 = Util.sorteia(1,6)

		se(dado1 == dado2){ 
			escreva("Dado 1: " ,dado1, "\nDado 2: ",dado2, "\nTotal lançamento = ",(dado1 + dado2) * 2)	
		}
		senao{
			escreva("Dado 1: " ,dado1, "\nDado 2: ",dado2, "\nTotal lançamento = ",(dado1 + dado2)
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 387; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */