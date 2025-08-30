programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		real sen, cos, tan, angulo
		
		angulo = mat.PI / 4
		sen = mat.seno(angulo)
		cos = mat.cosseno(angulo)
		tan = mat.tangente(angulo)

		escreva("O sen de ",angulo, "° é: ",sen)
		escreva("O cos de ",angulo, "° é: ",cos)
		escreva("A tan de ",angulo, "° é: ",tan)
		
		
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