programa
{
	
	funcao inicio()
	{
		real minutosFalados, valorMin, resultado
		escreva("Quantos minutos foi a ligação: ")
		leia(minutosFalados)
		escreva("\nQual é o valor do minuto: ")
		leia(valorMin)
		resultado = calculaValorMin(minutosFalados, valorMin)
		escreva("O valor Total da ligação foi: ",resultado)
	}

	funcao real calculaValorMin(real minutos, real valor){
		real valorT = minutos * valor
		retorne valorT
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