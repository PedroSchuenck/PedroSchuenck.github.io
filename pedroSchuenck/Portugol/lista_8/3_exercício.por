programa
{
	const inteiro TAM_VETOR = 5
	const inteiro TAM_VETOR3 = 10
	
	funcao inicio()
	{
		inteiro vetor1[TAM_VETOR], vetor2[TAM_VETOR], i, j,q,k, vetor3[TAM_VETOR3]
		
		
		para(i = 0; i < TAM_VETOR; i++){
			escreva("A posição ",i,"° de seu 1° vetor: ")
			leia(vetor1[i])
		}
		para(j = 0; j < TAM_VETOR; j++){
			escreva("A posição ",j,"° de seu 2° vetor: ")
			leia(vetor2[j])
		}

		
          i = 0
          j = 0
          q = 0
          k = 0

         	enquanto(i < TAM_VETOR3){
			se(i % 2 == 0){
				
				vetor3[i] = vetor1[j]
				j++
				
			}
			senao{
				
				vetor3[i] = vetor2[q]
				q++
			}
			
			i++
	     
	     }
	          
		para(k; k < TAM_VETOR3; k++){
			escreva(vetor3[k], " ")
		}
	          
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 319; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */