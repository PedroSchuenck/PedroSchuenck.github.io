programa
{	const inteiro TAM = 5
	funcao inicio()
	{
		real vetor[TAM]
		inteiro i = 0
		real result
		para(i; i < TAM; i++){
			escreva("Digite a posição ",i,"° so seu vetor: ")
			leia(vetor[i])
		}

		result = media(vetor)
		escreva("A média das notas eh: ", result)
	}

	funcao real media(real vetor[]){
		inteiro i = 0
		real divisor = 0.0
		real total = 0.0
		para(i; i < TAM; i++){
			total += vetor[i]
			divisor += 1
		}
		retorne total / divisor
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 229; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */