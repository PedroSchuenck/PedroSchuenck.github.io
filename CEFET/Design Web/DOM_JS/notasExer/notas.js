const executa =  document.getElementById("calculo");
executa.addEventListener('click', function média(){
    const escreve = document.getElementById("resultado");
    const nota1 = parseFloat(document.getElementById("numero1").value);
    const nota2 = parseFloat(document.getElementById("numero2").value);
    const nota3 = parseFloat(document.getElementById("numero3").value);
    const mediaFinal = ((nota1 * 2) + (nota2 * 3) + (nota3 * 5)) /10;
    escreve.innerHTML = `Sua média é: ${mediaFinal}`;
    return mediaFinal;
})