programa
{

	
	funcao inicio()
	{
	 	inteiro a, b, c, menor
	 	escreva("Digite seu 1 número: ")
	 	leia(a)
	 	escreva("\nDigite seu 2 número: ")
	 	leia(b)
	 	escreva("\nDigite seu 3 número: ")
	 	leia(c)

	 	menor = retornaMenor(a,b,c)

	 	escreva("O menor número entre os três é : ", menor)
	 	
	}

	funcao inteiro retornaMenor(inteiro n1, inteiro n2, inteiro n3){
		se(n1 <= n2 e n1 <= n3){
			retorne n1
		}
		senao se(n2 <= n1 e n2 <= n3){
			retorne n2
		}
		senao{
			retorne n3
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 11; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */