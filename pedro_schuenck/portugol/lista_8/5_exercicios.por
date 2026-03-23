programa
{

const inteiro TAM = 10

	funcao inicio()
	{
	}

}
/* $$$ Portugol Studio $$$
 *
 *
 * @POSICAO-CURSOR = 603;
 */
	
	funcao real pesoMedio(inteiro idade[], real peso[]){
		real pesoT = 0.0, pesoM = 0.0
		inteiro i = 0, divisor = 0
		para(i; i < TAM; i++){
			se(idade[i] >= 30){
				pesoT += peso[i]
				divisor += 1
			}
		}
		pesoM = pesoT / divisor
		retorne pesoM
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 603; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, funcao;
 */