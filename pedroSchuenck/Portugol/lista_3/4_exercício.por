programa {
	
  funcao inicio() {
    inteiro a, b
    escreva("Digite o dividendo (inteiro): ")
    leia(a)
    escreva("Digite o divisor (inteiro, != 0): ")
    leia(b)
    se (b == 0) {
      escreva("Erro: divisor igual a zero.")
    } senao {
      escreva(a, " / ", b, " = ", a / b)    // quociente inteiro
      escreva("\n", a, " % ", b, " = ", a % b) // resto
    }
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