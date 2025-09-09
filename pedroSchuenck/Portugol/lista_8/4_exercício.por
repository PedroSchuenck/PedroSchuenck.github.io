programa
{
	const inteiro TAM = 10
	
	funcao inicio()
	{
		inteiro vetor[TAM], resultPar, resultContaNum
		
		lerVetor(vetor)
		resultPar = retornaPar(vetor)
		resultContaNum = imprimeNum(vetor)

		escreva("A quantidade de pares contidas no vetor é: ",resultPar)
		escreva("\n")
		escreva("A quantidade de num no intervalo de 1 a 10 é: ",resultContaNum)
	}

	funcao vazio lerVetor(inteiro vetor[]){
		inteiro i = 0
		para(i = 0; i < TAM; i++){
			escreva("Digite a posição ",i," do seu vetor: ")
			leia(vetor[i])
		}
	}
	
	funcao inteiro retornaPar(inteiro vetor[]){
		inteiro contaPar, j
		contaPar = 0
		j = 0
		
		para(j = 0; j < TAM; j++){
			se(vetor[j] % 2 == 0){
				contaPar += 1
			}
		}

		retorne contaPar
	}

	funcao inteiro imprimeNum(inteiro vetor[]){
		inteiro contaNum = 0, q = 0
		para(q; q < TAM;  q++){
			se(vetor[q] >= 1 e vetor[q] <= 10){
				contaNum += 1
			}
		}

		retorne contaNum
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 245; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */