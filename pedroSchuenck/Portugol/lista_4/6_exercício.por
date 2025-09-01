programa
{
	
	funcao inicio()
	{
		logico cidade, frete
		inteiro quantProdutos
		real valorCompra

		escreva("O cliente mora na cidade( Sede da Loja) ? use, falso ou verdadeiro\n")
		leia(cidade)
		escreva("Qual a quantidade em números, de produtos que o cliente comprou ? \n")
		leia(quantProdutos)
		escreva("Digite o valor final da compra: ")
		leia(valorCompra)

		frete = cidade == verdadeiro ou quantProdutos >= 3 e valorCompra >= 200.00

		escreva("Frete grátis: ",frete)

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 171; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */