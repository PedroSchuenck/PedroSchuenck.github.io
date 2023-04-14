let btexecuta = document.getElementById("executa");
let escreve = document.getElementById("resultado");
let fraseInput = document.getElementById("frase");
btexecuta.addEventListener('click' ,function transforma(){
    let frase = fraseInput.value;
    let fraseComVogaisEmNegrito = frase.replace(/[aeiou]/gi, (vogal) => `<b>${vogal}</b>`);
    escreve.innerHTML = `Frase com vogais em negrito: ${fraseComVogaisEmNegrito}`;
});
