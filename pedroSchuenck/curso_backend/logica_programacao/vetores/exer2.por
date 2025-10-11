programa
{
	const inteiro TAM = 10
	funcao inicio()
	{
		inteiro vetor[TAM]
		inteiro i = 0
		inteiro maior
		para(i; i < TAM; i++){
			escreva("Digite a posição ",i,"° de seu vetor: ")
			leia(vetor[i])
		}
		maior = maiorDeles(vetor)
		escreva("O maior do vetor eh: ",maior)
	}
	funcao inteiro maiorDeles(inteiro vetor[]){
		inteiro i = 0
		inteiro maior = 0
		para(i; i < TAM; i++){
			se(vetor[i] > maior){
				maior = vetor[i]
			}
		}
		retorne maior
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 462; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */