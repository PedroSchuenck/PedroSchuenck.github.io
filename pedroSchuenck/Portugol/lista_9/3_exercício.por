programa
{
    
    const inteiro LINHA = 10
    const inteiro COLUNA = 10
    
    funcao inicio()
    {
        inteiro matriz[LINHA][COLUNA], i, j, diagonal, diagonal_2
        diagonal = 0
        diagonal_2 = 0
        logico matrizL
                
        // Preenche a matriz
        para(i = 0; i < LINHA; i++){
            para(j = 0; j < COLUNA; j++){    
                escreva("Digite um número para sua matriz[", i, "][", j, "]: ")
                leia(matriz[i][j]) 
            }
        }
        // Calcula as diagonais
        para(i = 0; i < LINHA; i++){
            diagonal += matriz[i][i]                // diagonal principal
            diagonal_2 += matriz[i][COLUNA-1-i]     // diagonal secundaria
        }

        escreva("\nSoma da diagonal principal: ", diagonal)
        escreva("\nSoma da diagonal secundaria: ", diagonal_2)
        
        se(diagonal_2 == diagonal){
        	matrizL = verdadeiro
        	escreva("\nSoma das diagonais forem iguais ela é uma matriz perfeita: ",matrizL)
        }senao{
        	matrizL = falso
        	escreva("sua matriz é perfeita? ", matrizL)
        }
        
        
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 483; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */