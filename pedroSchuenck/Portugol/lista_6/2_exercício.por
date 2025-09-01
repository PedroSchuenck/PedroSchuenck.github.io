programa
{
	
	funcao inicio()
	{
		real peso, altura, massa
		cadeia grau
		escreva("Digite seu peso (kg): ")
		leia(peso)
		escreva("Digite sua altura (M): ")
		leia(altura)

		massa = peso / (altura * altura)

		se(massa < 26){
			grau = "Normal"	
		}
		senao se(massa < 30){
			grau = "Obeso"
		}
		senao{
			grau = "Obeso Mórbido"
		}
		escreva(grau)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 343; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, funcao;
 */