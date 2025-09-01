programa
{
	
	funcao inicio()
	{
		inteiro n, ultDigito
		logico interessanteL
		escreva("Digite um número: ")
		leia(n)
		ultDigito = ultimoDigito(n)
		interessanteL = interessante(n, ultDigito)
		escreva("Seu número é INTERESSANTE: ",interessanteL)

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
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 250; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */