programa
{
	
	funcao inicio()
	{
		real deposito, resultado
		inteiro meses
		escreva("Informe o valor do seu depósito: ")
		leia(deposito)
		escreva("\nQuantos meses o dinheiro ficará rendendo(em números): ")
		leia(meses)
		resultado = retornaRendimento(deposito, meses)
		escreva("O total do rendimento foi: ", resultado)
		
	}

	funcao real retornaRendimento(real deposito, inteiro meses){
		real juros, dinheiroT
		juros = (deposito * (0.6/100)) * meses
		dinheiroT = deposito + juros
		retorne dinheiroT
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 521; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */