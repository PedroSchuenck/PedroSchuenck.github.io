let texto = document.getElementById("texto");
let btexecuta = document.getElementById("executa");
let escreve = document.getElementById("resultado");

function tenisPolar(){
    let novoTexto = "";
    for (let i = 0; i < texto.value.length; i++) {
        let letra = texto.value[i];
    
        if (letra == "T" || letra == "t") {
            novoTexto += "P";
        } else if (letra == "P" || letra == "p") {
            novoTexto += "T";
        } else if (letra == "E" || letra == "e") {
            novoTexto += "O";
        } else if (letra == "O" || letra == "o") {
            novoTexto += "E";
        } else if (letra == "N" || letra == "n") {
            novoTexto += "L";
        } else if (letra == "L" || letra == "l") {
            novoTexto += "N";
        } else if (letra == "I" || letra == "i") {
            novoTexto += "A";
        } else if (letra == "A" || letra == "a") {
            novoTexto += "I";
        } else if (letra == "S" || letra == "s") {
            novoTexto += "R";
        } else if (letra == "R" || letra == "r") {
            novoTexto += "S";
        } else {
            novoTexto += letra;
        }
    }
    escreve.innerHTML = `Seu novo texto é: ${novoTexto}`;
}

btexecuta.addEventListener('click', tenisPolar);


