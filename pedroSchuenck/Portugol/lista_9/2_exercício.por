programa
{
	
	const inteiro LINHA = 3
	const inteiro COLUNA = 5
	
	funcao inicio()
	{
		inteiro matriz[LINHA][COLUNA], i, j,q,k, maior, soma, nElementos, media
		maior = 0
		soma = 0
		nElementos = 0
		
		para(i = 0; i < LINHA; i++){
			para(j = 0; j < COLUNA; j++){
				escreva("Digite um número para sua matriz[",i,"][",j,"]: ")
				leia(matriz[i][j])
				soma += matriz[i][j]
				nElementos += 1
			}
		}
		media = soma / nElementos
		escreva("\nSua média é  ",soma, " / ",nElementos, " = " ,media)
		//maior = matriz[0][0]
		para(q = 0; q < LINHA; q++){
			para(k = 0; k < COLUNA; k++){
				se(matriz[q][k] > maior){
					maior = matriz[q][k]
				}
			}
		}
		escreva("\n34O maior número é : ",maior)
	}
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 509; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
