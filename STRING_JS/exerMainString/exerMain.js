const fraseInput = document.querySelector('#frase');
const palavraInput = document.querySelector('#palavra');
const novaPalavraInput = document.querySelector('#novaPalavra');
const resultadoElemento = document.querySelector('#resultado');


function contarPalavras(frase) {
  return frase.trim().split(/\s+/).length;
}


function contarLetras(frase) {
  return frase.replace(/\s/g, '').length;
}


function contarOcorrencias(frase, palavra) {
  const regex = new RegExp(palavra, 'gi');
  return (frase.match(regex) || []).length;
}

function destacarPalavra(frase, palavra) {
  const regex = new RegExp(palavra, 'gi');
  return frase.replace(regex, `<span class="destaque">${palavra}</span>`);
}


function substituirPalavra(frase, palavraAntiga, novaPalavra) {
  const regex = new RegExp(palavraAntiga, 'gi');
  return frase.replace(regex, novaPalavra);
}

document.querySelector('#executa').addEventListener('click', function() {
  const frase = fraseInput.value.trim();
  const palavra = palavraInput.value.trim();
  const novaPalavra = novaPalavraInput.value.trim();

  if (frase && palavra) {
    const numPalavras = contarPalavras(frase);
    const numLetras = contarLetras(frase);
    const numOcorrencias = contarOcorrencias(frase, palavra);
    const fraseComPalavraDestacada = destacarPalavra(frase, palavra);
    const fraseComPalavraSubstituida = substituirPalavra(frase, palavra, novaPalavra);

    resultadoElemento.innerHTML = `
      <p>Número de palavras: ${numPalavras}</p>
      <p>Total de letras: ${numLetras}</p>
      <p>Ocorrências da palavra "${palavra}": ${numOcorrencias}</p>
      <p>Texto com a palavra "${palavra}" destacada: ${fraseComPalavraDestacada}</p>
      <p>Texto com a palavra "${palavra}" substituída por "${novaPalavra}": ${fraseComPalavraSubstituida}</p>
    `;
  }
});
