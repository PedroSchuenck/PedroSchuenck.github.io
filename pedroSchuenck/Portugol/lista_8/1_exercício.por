programa
{
	const inteiro TAM_VETOR = 20
	funcao inicio()
	{
		inteiro vetor1[TAM_VETOR], vetor2[TAM_VETOR], vetor3[TAM_VETOR], i, j, q
		
		
		para(i = 0; i < TAM_VETOR; i++){
			escreva("A posição ",i,"° de seu 1° vetor: ")
			leia(vetor1[i])
		}
		para(j = 0; j < TAM_VETOR; j++){
			escreva("A posição ",j,"° de seu 2° vetor: ")
			leia(vetor2[j])
		}
		para(q = 0; q < TAM_VETOR; q++){
			vetor3[q] = vetor1[q] + vetor2[q]
			escreva(vetor3[q], " ") 
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 471; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */