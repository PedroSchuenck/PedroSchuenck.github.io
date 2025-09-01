programa {
	
  inclua biblioteca Matematica --> mat
  
  funcao inicio() {
    real grau, rad, s, c, t
    
    escreva("Digite o ângulo em graus: ")
    leia(grau)
    
    rad = grau * mat.PI / 180
    
    s = mat.seno(rad)
    c = mat.cosseno(rad)
    
    se (c == 0) {
      escreva("Tangente indefinida (cosseno = 0)\n")
    } senao {
      t = mat.tangente(rad)
      escreva("Ângulo em radianos: ", rad)
      escreva("\nSeno: ", s)
      escreva("\nCosseno: ", c)
      escreva("\nTangente: ", t)
    }
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 169; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */