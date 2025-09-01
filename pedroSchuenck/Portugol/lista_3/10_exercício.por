programa {
	
  inclua biblioteca Matematica --> mat

  funcao inicio() {
    real a, b, c, s, area
    escreva("Digite o lado a: ")
    leia(a)
    escreva("Digite o lado b: ")
    leia(b)
    escreva("Digite o lado c: ")
    leia(c)

    s = (a + b + c) / 2
    area = mat.raiz(s * (s - a) * (s - b) * (s - c), 2)

    escreva("Área do triângulo: ", area)
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 363; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */