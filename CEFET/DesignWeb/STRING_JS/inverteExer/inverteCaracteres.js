let btexecuta = document.getElementById("executa");
let escreve = document.getElementById("resultado");
btexecuta.addEventListener('click', function inverte(){
    const frase = document.getElementById("frase").value;
let fraseInvertida = "";
for (let i = frase.length - 1; i >= 0; i--) {
  fraseInvertida += frase[i];
}
escreve.innerHTML = `Invertendo a frase fica: ${fraseInvertida}`;
});

