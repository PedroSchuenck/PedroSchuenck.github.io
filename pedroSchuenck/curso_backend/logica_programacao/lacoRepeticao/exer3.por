programa
{
	
	funcao inicio()
	{	
		inteiro resultPar
		resultPar = somaPar()
		escreva("A soma dos pares eh: ",resultPar)

	}

	funcao inteiro somaPar(){
		inteiro soma = 0
		para(inteiro i = 0; i <= 100; i++){
			se(i % 2 == 0){
				soma += i
			}
		}
		retorne soma
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 277; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */