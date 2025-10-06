programa
{
	
	funcao inicio()
	{
		cadeia nome, senha
		escreva("Digite seu nome: ")
		leia(nome)
		escreva("Digite sua senha: ")
		leia(senha)
		validaSenha(nome, senha)
	}

	funcao vazio validaSenha(cadeia &nome, cadeia &senha){
		para(inteiro i = 0; nome == senha; i++){
			escreva("\nNome e senha iguais, troque!\n")
			escreva("Digite seu nome: ")
			leia(nome)
			escreva("Digite sua senha: ")
			leia(senha)
		}
		se(nome != senha){
			escreva("Senha Atualizada com sucesso!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 487; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */