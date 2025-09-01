programa
{
	
	funcao inicio()
	{
		logico l1, l2, l3, l4, A, B
		A = verdadeiro
		B = falso
		l1 = nao A e B ou A e nao B
		l2 = nao(nao( A ou B) e (A ou B))
		l3 = A ou B e nao A ou nao B
		l4 = (A ou B) e (nao A ou nao B)

		escreva(l1,"\n",l2,"\n",l3,"\n",l4,"\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 126; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */