let btexecuta = document.getElementById("executa");
let escreve = document.getElementById("resultado");

function data(){
    var dataDeNascimento = document.getElementById("data").value;
    var dataDeNascimentoObj = new Date(dataDeNascimento.split("/").reverse().join("-"));
    var diferencaEmMilissegundos = Date.now() - dataDeNascimentoObj.getTime();
    var diasDeVida = Math.floor(diferencaEmMilissegundos / (1000 * 60 * 60 * 24));
    escreve.innerHTML = `Até agora você tem ${diasDeVida} dias de vida`;
    }
btexecuta.addEventListener('click', data);
