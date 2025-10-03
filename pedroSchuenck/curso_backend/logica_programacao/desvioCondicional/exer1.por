programa
{
	
	funcao inicio()
	{
		inteiro idade
		logico result
		escreva("Digite sua idade: ")
		leia(idade)
		result = maior18(idade)
		escreva("O usuário é maior de idade: ",result)
	}

	funcao logico maior18(inteiro idade){
		logico verificaIdade = idade >= 18
		retorne verificaIdade
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 301; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */