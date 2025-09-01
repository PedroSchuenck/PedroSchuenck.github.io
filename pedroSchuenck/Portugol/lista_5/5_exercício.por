programa
{
	
	funcao inicio()
	{
		inteiro num
		logico resultado
		escreva("Digite um número: ")
		leia(num)
		resultado = verificaMes(num)
		escreva("O número digitado equivale a um mês? ", resultado)	
	}

	funcao logico verificaMes(inteiro n){
		logico mes = n >= 1 e n <= 12
		retorne mes
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 304; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */