programa
{
	
	funcao inicio()
	{
		caracter x
		logico xL
		escreva("Digite um caracter: ")
		leia(x)
		se( x == 'a' ou x == 'e' ou x == 'i' ou x == 'o' ou x  == 'u'){
			xL = verdadeiro
		}
		senao{
			xL = falso
		}
		escreva("Seu caracter é uma volgal: ",xL)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 263; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */