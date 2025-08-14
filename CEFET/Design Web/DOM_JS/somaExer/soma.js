
const executa = document.getElementById("calculo")
calculo.addEventListener('click', function calculaSoma(){
    const n1 = parseFloat( document.getElementById("numero1").value);
    const n2 = parseFloat( document.getElementById("numero2").value);
    let total = n1 + n2;
    const escreve = document.getElementById("resultado")
    escreve.innerHTML = `O total é: ${total}`
    return total;
});



