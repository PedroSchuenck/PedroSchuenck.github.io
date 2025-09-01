programa
{
	
	funcao inicio()
	{
		inteiro n1, n2, resto, result
		logico resultadoLogico
		resto = 0
		result = 0
		escreva("Escreva 1° número: ")
		leia(n1)
		escreva("Escreva 2° número: ")
		leia(n2)

		resultadoLogico = ehMultiploAprimorado(n1, n2, resto, result)
		escreva("Resultado Divisão: ",result, "\nResto: ", resto, "\nÉ multiplo do segundo ? ",resultadoLogico)
	}

	funcao logico ehMultiploAprimorado(inteiro n1, inteiro n2, inteiro &resto, inteiro &result){
		resto = n1 % n2
		result = n1 / n2
		logico verifica = resto == 0
		retorne verifica
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 296; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */