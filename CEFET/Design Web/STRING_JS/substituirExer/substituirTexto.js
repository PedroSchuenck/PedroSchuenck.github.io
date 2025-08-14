let btexecuta = document.getElementById("executa");
let escreve = document.getElementById("resultado");
let texto = document.getElementById("frase").value;
let procurar = document.getElementById("substituir").value;
let substituir = document.getElementById("novaP").value;

function substitui(){
    let texto = document.getElementById("frase").value;
    let procurar = document.getElementById("substituir").value;
    let substituir = document.getElementById("novaP").value;
    let novoTexto = texto.replace(procurar, substituir);
    escreve.innerHTML = `A nova Frase será:${novoTexto}`
}
 btexecuta.addEventListener('click', substitui);