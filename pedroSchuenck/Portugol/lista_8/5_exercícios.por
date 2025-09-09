programa
{
	const inteiro TAM = 10
	
	funcao inicio()
	{
		inteiro idade[TAM] = {10,18,24,34,67,43,12,30,29,9}
		real peso[TAM] = {56.7,81.7,45.6,80.0,68.0,95.0,58.9,56.2, 58.0, 29.9}, resultPesoMedio

		resultPesoMedio = pesoMedio(idade, peso)

		escreva("O resultado Médio do peso para as pessoas com mais de 30 anos é: ",resultPesoMedio)
	}
	
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