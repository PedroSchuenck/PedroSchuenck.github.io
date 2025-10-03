programa
{
    funcao inicio()
    {
        real n1, n2, result
        caracter operador

        escreva("Digite n1: ")
        leia(n1)

        escreva("Digite n2: ")
        leia(n2)

        escreva("Digite o operador (+, -, *, /): ")
        leia(operador)

        result = resultadoFinal(n1, n2, operador)

        escreva("O resultado de: ", n1, " ", operador, " ", n2, " = ", result, "\n")
    }
    
    funcao real soma(real n1, real n2){
        retorne n1 + n2
    }
    
    funcao real subtracao(real n1, real n2){
        retorne n1 - n2
    }
    
    funcao real multiplicacao(real n1, real n2){
        retorne n1 * n2
    }
    
    funcao real divisao(real n1, real n2){
        retorne n1 / n2
    }

    funcao real resultadoFinal(real n1, real n2, caracter operador){
        escolha(operador){
            caso '+':
                retorne soma(n1,n2)
            
            caso '-':
                retorne subtracao(n1,n2)

            caso '*':
                retorne multiplicacao(n1,n2)

            caso '/':
                retorne divisao(n1,n2)

            caso contrario:
                escreva("Operador inválido!\n")
                retorne 0.0
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 914; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */