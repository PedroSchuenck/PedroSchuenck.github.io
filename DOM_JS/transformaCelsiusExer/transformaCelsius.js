const executa = document.getElementById("calculo");
executa.addEventListener('click', function transforma(){
    const escreve = document.getElementById("resultado");
    const faren =parseFloat(document.getElementById("numero1").value);
    const conta = ((faren - 32) * 5) / 9;
    escreve.innerHTML = `A transformação para Celsius é: ${conta}`;

})