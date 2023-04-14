let btexecuta = document.getElementById("executa");
let escreve = document.getElementById("resultado");
btexecuta.addEventListener('click', function array(){
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
let tabela = "<table border><tr><th>Palavra</th><th>Número de ocorrências</th></tr>";
for (let palavra in contagem) {
  tabela += `<tr><td>${palavra}</td><td>${contagem[palavra]}</td></tr>`;
}
tabela += "</table>";
escreve.innerHTML = tabela
})
