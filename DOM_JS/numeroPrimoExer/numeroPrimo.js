const executa = document.getElementById("calculo");
executa.addEventListener("click", function verificaPrimo(){
    const n1 = parseFloat(document.querySelector('#numero1').value);
    const escreve = document.getElementById("resultado");
    if (n1 <= 1) {
        escreve.innerHTML =  `Seu número não é primo`;
    } else if (n1 <= 3) {
        escreve.innerHTML = `Seu número é primo`;
    } else if (n1 % 2 === 0 || n1 % 3 === 0) {
        escreve.innerHTML = `Seu número não é primo`;
    }else{
        escreve.innerHTML = `Seu número é primo`;
    }
    
    let i = 5;
    
      while (i * i <= n1) {
        if (n1 % i === 0 || n1 % (i + 2) === 0) {
        escreve.innerHTML = `Seu número não é primo`;
        }
        i += 6;
    }
    

})

