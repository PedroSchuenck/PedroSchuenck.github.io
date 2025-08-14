let btexecuta = document.getElementById("executa");
let escreve = document.getElementById("resultado");

function maiorOcorrencia() {
  let texto = document.getElementById("frase").value;
  let palavras = texto.split(/\W+/);
  let contagem = {};
  for (let palavra of palavras) {
    if (palavra in contagem) {
      contagem[palavra]++;
    } else {
      contagem[palavra] = 1;
    }
  }
  let palavraMaisComum = "";
  let contagemMaisComum = 0;
  for (let palavra in contagem) {
    if (contagem[palavra] > contagemMaisComum) {
      palavraMaisComum = palavra;
      contagemMaisComum = contagem[palavra];
    }
  }
  let numPalavras = palavras.length;
  let numLetras = texto.replace(/\W/g, "").length;
  
  escreve.innerHTML = `A palavra mais comum no texto é: ${palavraMaisComum} (${contagemMaisComum})<br>
  O Número de Palavras: ${numPalavras}<br>
  Total de letras: ${numLetras}`;
}

btexecuta.addEventListener('click', maiorOcorrencia);


