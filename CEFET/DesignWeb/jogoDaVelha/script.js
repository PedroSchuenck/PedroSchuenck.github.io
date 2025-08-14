const qtdDeJogador = [];// 2
const matrizDaVitoria = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]];
console.log(matrizDaVitoria[0])
let jogador = "X";
function adicionaJogador() {
    const input = document.getElementById("input").value;
    qtdDeJogador.push(input)
    if (qtdDeJogador.length <= 2) {
        const section = document.getElementById("players")
        const p = document.createElement("h3");
        console.log(p);
        p.textContent = `Jogador: ${input}`;
        p.setAttribute("class", "player")
        section.appendChild(p)
    }
    if (comecaJoga()) {
        const div = document.getElementById("game");
        div.dataset.game = "true";
        console.log("ERRO")
    }
}

function comecaJoga() {
    if (qtdDeJogador.length == 2) {
        return true;
    }
    return false;
}
function jogada(element) {
    if (jogador === "X" && element.textContent === "") {
        element.textContent = "X";
        jogador = "O";
    } else if (element.textContent === "") {
        element.textContent = "O";
        jogador = "X";
    }
}
document.getElementById("add").addEventListener("click", adicionaJogador)
document.querySelectorAll(".cell").forEach(function (element, indice) {
    element.addEventListener("click", () => jogada(element))
})