programa {
	
  funcao inicio() {
    real despesa
    escreva("Digite o valor gasto no restaurante: ")
    leia(despesa)
    real gorjeta = despesa * 0.10
    real total = despesa + gorjeta
    escreva("Gorjeta (10%): R$ ", gorjeta)
    escreva("\nValor total (despesa + gorjeta): R$ ", total)
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 12; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */