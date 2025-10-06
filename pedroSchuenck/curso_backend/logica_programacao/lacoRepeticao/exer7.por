programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		inteiro n,result
		escreva("Digite seu limite: ")
		leia(n)
		result = hiperFatorial(n)
		escreva(result)
		
		
	}

	funcao inteiro hiperFatorial(inteiro limite){
		inteiro i = 1
		inteiro resultado = 1
		para(i; i<= limite; i++){
			resultado *= mat.potencia(i,i)
		}
		retorne resultado
	}
}	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 372; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */