programa
{

	funcao inicio()
	{
		real temp_faren, resultado
		escreva("Temperatura em farenheit: ")
		leia(temp_faren)
		resultado = farenToCelsius(temp_faren)
		escreva("Temperatura em celius é: ",resultado)
	}

	funcao real farenToCelsius(real farenheit){
		real celsius = (farenheit - 32) * 5/9
		retorne celsius
	}
}

/* $$$ Portugol Studio $$$
 *
 *
 * @POSICAO-CURSOR = 331;
 */
 * 
 * @POSICAO-CURSOR = 331; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */