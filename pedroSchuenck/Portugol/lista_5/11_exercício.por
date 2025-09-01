programa
{
	
	funcao inicio()
	{
		inteiro n, resultDigito
		logico resultInteressante, resultMes, resultChato
		escreva("Digite um número: ")
		leia(n)
		
		resultDigito = ultimoDigito(n)
		resultInteressante = interessante(n, resultDigito)
		resultMes = verificaMes(n)
		resultChato = retornaChato(resultInteressante, resultMes)
		escreva("O número é CHATO: ", resultChato)
	}

	funcao inteiro ultimoDigito(inteiro n){
		inteiro ultDigito = n  % 10
		retorne ultDigito
	}
	
	funcao logico interessante(inteiro numero, inteiro digito){
		inteiro resultadoDigito = digito * 10
		logico verifica = numero < resultadoDigito
		retorne verifica 
	}
		
	funcao logico verificaMes(inteiro n){
		logico mes = n >= 1 e n <= 12
		retorne mes
	}

	funcao logico retornaChato(logico interessante, logico mes){
		logico chato = interessante == falso e mes == verdadeiro
		retorne chato
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 375; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */