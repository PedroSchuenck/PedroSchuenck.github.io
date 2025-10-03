programa
{
	
	funcao inicio()
	{
		inteiro ano
		logico result
		escreva("Digite seu número: ")
		leia(ano)
		result = bissexto(ano)
		escreva("Seu ano é bissexto: ",result)
	}

	funcao logico bissexto(inteiro ano){
		se((ano % 4 == 0 e nao(ano % 100 == 0)) ou  ano % 400 == 0){
			retorne verdadeiro
		}senao{
			retorne falso
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 344; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */