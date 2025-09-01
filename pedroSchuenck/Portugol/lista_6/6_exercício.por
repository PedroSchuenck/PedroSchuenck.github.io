programa
{
	
	funcao inicio()
	{
		inteiro dia, mes, ano
		logico diaL, mesL, anoL, data
		escreva("Digite o dia do nascimento: ")
		leia(dia)
		escreva("Digite o mes do nascimento: ")
		leia(mes)
		escreva("Digite o ano do nascimento: ")
		leia(ano)

		diaL = dia >= 1 e dia <= 31
		mesL = mes >= 1 e mes <= 12
		anoL = ano <= 2025

		se(diaL == verdadeiro e mesL == verdadeiro e anoL == verdadeiro){
			data = verdadeiro
			escreva("Sua data de nascimento é valida: ",dia,"/",mes,"/",ano)
		}
		senao{
			data = falso
			escreva("Sua data de nascimento é falsa: ",dia,"/",mes,"/",ano)
		}

	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 596; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */