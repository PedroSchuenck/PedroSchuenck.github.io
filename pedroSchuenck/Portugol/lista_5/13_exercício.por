programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		inteiro a
		real resultArea, resultTriforce
		escreva("Digite o lado do triangulo Equilátero: ")
		leia(a)
		resultArea = calculaArea(a)
		resultTriforce = triforce(resultArea)

		escreva("A área da triforce é: ",resultTriforce)
	}

	funcao real calculaArea(inteiro a){
		real area = mat.potencia(a,2) * mat.raiz(3,2) / 4
		retorne area
	}

	funcao real triforce(real areaTriangulo){
		real triforce = areaTriangulo * 3
		retorne triforce
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 309; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */