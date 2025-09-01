programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		real lA, lB, lC, raio, altura, resultVolCaixa, resultVolCilindro, resultFinal
		escreva("Digite o lado A: ")
		leia(lA)
		escreva("\nDigite o lado B: ")
		leia(lB)
		escreva("\nDigite o lado C: ")
		leia(lC)
		escreva("\nDigite o raio: ")
		leia(raio)
		escreva("\nDigite a altura: ")
		leia(altura)

		resultVolCaixa = calculaVolumeCaixa(lA,lB,lC)

		resultVolCilindro = calculaVolumeCilindro(raio, altura)

		resultFinal = volumeCaixaSemCilindro(resultVolCaixa, resultVolCilindro)

		escreva("O Volume da caixa sem o cilindro é: ", resultFinal)
		

		
	}

	funcao real calculaVolumeCaixa(real ladoA, real ladoB, real ladoC){
		real volume = ladoA * ladoB * ladoC
		retorne volume
	}

	funcao real calculaVolumeCilindro(real r, real h){
		real volume = mat.PI * h * mat.potencia(r, 2)
		retorne volume
	}

	funcao real volumeCaixaSemCilindro(real vCaixa, real vCilindro){
		real resultado = vCaixa - vCilindro
		retorne resultado
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 630; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */