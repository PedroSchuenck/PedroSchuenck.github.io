programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		real pi, angulo, rad
		pi = mat.PI

		escreva("Digite seu angulo: ")
		leia(angulo)

		rad = (angulo * pi) / 180

		escreva("\nO cos de ",angulo, " é:" ,mat.cosseno(rad))
		escreva("\nO sen de ",angulo, " é:" ,mat.seno(rad))
		escreva("\nA tan de ",angulo, " é:" ,mat.tangente(rad))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 203; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */