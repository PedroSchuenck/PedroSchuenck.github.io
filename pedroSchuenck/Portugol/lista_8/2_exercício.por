programa
{
	const inteiro TAM_VETOR = 5
	funcao inicio()
	{
		inteiro vetor1[TAM_VETOR], vetor2[TAM_VETOR], i,j
		
		para(i = 0; i < TAM_VETOR; i++){
			escreva("A posição ",i,"° de seu 1° vetor: ")
			leia(vetor1[i])
		}
		
		i = 0
		
		para(j = TAM_VETOR-1; j >= 0; j--){
			vetor2[i] = vetor1[j]
			i++
		}
		
		para(i = 0; i < TAM_VETOR; i++){
			escreva(vetor2[i])
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 388; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */