programa
{
	
	funcao inicio()
	{
		cadeia estado
		escreva("A sigla do seu estado é: ")
		leia(estado)

		se(estado == "RJ"){
			escreva("Você é  carioca")	
		}
		senao se(estado == "SP"){
			escreva("Você é paulista")
		}
		senao se(estado == "MG"){
			escreva("Você é mineiro")
		}
		senao{
			escreva("Outro Estado")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 324; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */