programa
{
	
	const inteiro LINHA = 3
	const inteiro COLUNA = 3

	funcao inicio()
	{
		inteiro matriz_1[LINHA][COLUNA]
		inteiro matriz_2[LINHA][COLUNA]
		inteiro matriz_soma[LINHA][COLUNA]
		inteiro i,j
		


		para(i = 0; i < LINHA; i++){
			para(j = 0; j < COLUNA; j++){
				escreva("Digite um número para sua matriz[",i,"][",j,"]: ")
				leia(matriz_1[i][j])
			}
		}

		para(i = 0; i < LINHA; i++){
			para(j = 0; j < COLUNA; j++){
				escreva("Digite um número para sua matriz[",i,"][",j,"]: ")
				leia(matriz_2[i][j])
			}
		}

		retornaMatriz(matriz_1, matriz_2, matriz_soma)

		para(i = 0; i < LINHA; i++){
			escreva("\n")
			para(j = 0; j < COLUNA; j++){
				escreva( " ", matriz_soma[i][j])
			}
		}
	}
	
	funcao retornaMatriz(inteiro matriz[][], inteiro matriz_2[][], inteiro &soma_matriz[][]){
		inteiro i,j
		para(i = 0; i < LINHA; i++){
			para(j = 0; j < COLUNA; j++){
				soma_matriz[i][j] = matriz[i][j] + matriz_2[i][j]
			}
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 715; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
