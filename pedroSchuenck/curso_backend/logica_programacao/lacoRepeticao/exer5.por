programa
{
	
	funcao inicio()
	{
		inteiro l
		escreva("Digite o limite da sua sequência: ")
		leia(l)
		fibonacci(l)
	}

	funcao vazio fibonacci(inteiro limite){
		inteiro termo1 = 0
		inteiro termo2 = 1
		inteiro termoF = 0
		
		escreva(termo1," ", termo2, " ")
		
		enquanto(termoF <= limite){
			//0, 1, 1, 2, 3
			termoF = termo1 + termo2		
				
			escreva(termoF, " ")
			
			termo1 = termo2
			termo2 = termoF
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 122; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */