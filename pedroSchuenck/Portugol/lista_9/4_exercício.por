programa
{
    const inteiro FABRICANTES = 4
    const inteiro ANOS = 6

    funcao inicio()
    {
        cadeia fabricantes[FABRICANTES]
        inteiro anos[ANOS]
        inteiro vendas[FABRICANTES][ANOS]
        inteiro i, j

        // --- a) Leitura dos dados ---
        para(i = 0; i < FABRICANTES; i++){
            escreva("Fabricante ", i+1, ": ")
            leia(fabricantes[i])
        }

        para(j = 0; j < ANOS; j++){
            escreva("Ano ", j+1, ": ")
            leia(anos[j])
        }

        para(i = 0; i < FABRICANTES; i++){
            para(j = 0; j < ANOS; j++){
                escreva("Vendas de ", fabricantes[i], " em ", anos[j], ": ")
                leia(vendas[i][j])
            }
        }

        // --- b) Fabricante que mais vendeu em 2003 ---
        inteiro coluna2003 = -1
        para(j = 0; j < ANOS; j++){
            se(anos[j] == 2003){
                coluna2003 = j
            }
        }

        inteiro maxVendas = vendas[0][coluna2003]
        inteiro indiceMax = 0
        para(i = 1; i < FABRICANTES; i++){
            se(vendas[i][coluna2003] > maxVendas){
                maxVendas = vendas[i][coluna2003]
                indiceMax = i
            }
        }
        escreva("\nFabricante que mais vendeu em 2003: ", fabricantes[indiceMax])

        // --- c) Ano de maior volume geral de vendas ---
        inteiro indiceAno = 0
        inteiro maxAno = 0
        para(j = 0; j < ANOS; j++){
            inteiro somaAno = 0
            para(i = 0; i < FABRICANTES; i++){
                somaAno += vendas[i][j]
            }
            se(somaAno > maxAno){
                maxAno = somaAno
                indiceAno = j
            }
        }
        escreva("\nAno de maior volume de vendas: ", anos[indiceAno])

        // --- d) Média de vendas de cada fabricante ---
        para(i = 0; i < FABRICANTES; i++){
            inteiro soma = 0
            para(j = 0; j < ANOS; j++){
                soma += vendas[i][j]
            }
            real media = soma / ANOS
            escreva("\nMédia de vendas de ", fabricantes[i], ": ", media)
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2134; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */