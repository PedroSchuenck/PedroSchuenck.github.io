const executa = document.getElementById("calculo");
executa.addEventListener("click", function verificaPrimo(){
    const n1 = parseFloat(document.querySelector('#numero1').value);
    const escreve = document.getElementById("resultado");
    if(n1 < 1)
    {
        escreve.innerHTML = `Insira um N° maior ou igual a 1`
    }else{
        for(let i = 2; i*i <= n1; i++){
            if(n1 % i == 0){
        escreve.innerHTML = `Seu número não é primo`;
        } else{
        escreve.innerHTML =  `Seu número é primo`;
        }
    }   
} 
})

