programa
{
	
	funcao inicio()
	{
		inteiro n
		escreva("Digite a conta do fatorial desejado: ")
		leia(n)

		inteiro resultF = fatorial(n)
        
		escreva("O fatorial de ", n, " é: ", resultF, "\n")
	}

	funcao inteiro fatorial(inteiro num){
		se(num < 0){
			retorne 0
		}
		senao se(num <= 1){
			retorne 1
		}
        senao{
			inteiro resultado = 1
			
			para(inteiro i = num; i >= 1; i--){
				resultado *= i
			}
			retorne resultado
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 452; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {num, 15, 33, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */