programa
{
	
	funcao inicio()
	{
		inteiro hora, minutos, resultado
		escreva("Digite a Hora atual: ")
		leia(hora)
		escreva("\nDigite os Minutos atuais: ")
		leia(minutos)

		resultado = tempoPassado(hora,minutos)
		escreva("O tempo Passado em minutos foi: ",resultado)
	}

	funcao inteiro tempoPassado(inteiro hora, inteiro minutos){
		inteiro hora_em_minutos, minutos_passados
		hora_em_minutos = hora * 60
		minutos_passados =  hora_em_minutos + minutos
		retorne minutos_passados
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 497; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */