programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		real raio, resultado
		escreva("Digite seu raio: ")
		leia(raio)
		resultado = retornaComp(raio)
		escreva("Seu comprimento é: ",resultado)
	}

	funcao  real retornaComp(real r){
		real pi, comprimento
		pi = mat.PI
		comprimento = 2*pi*r
		retorne comprimento
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 346; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */