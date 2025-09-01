programa
{
	
	funcao inicio()
	{
		inteiro n1, n2, resto, result
		resto = 0
		result = 0
		escreva("Escreva 1° número: ")
		leia(n1)
		escreva("Escreva 2° número: ")
		leia(n2)
		divisaoResto(n1, n2, resto, result)
		escreva("Quociente: ",result, " Resto: ", resto)
	}

	funcao divisaoResto(inteiro n1, inteiro n2, inteiro &resto, inteiro &result){
		resto = n1 % n2
		result = n1 / n2
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 270; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */