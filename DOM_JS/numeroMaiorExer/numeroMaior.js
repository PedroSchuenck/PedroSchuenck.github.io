const executa = document.getElementById("calculo");
executa.addEventListener("click", function Maior(){
    const escreve = document.getElementById("resultado");
    const n1 = parseFloat(document.getElementById("numero1").value);
    const n2 = parseFloat(document.getElementById("numero2").value);
    if(n1 > n2)
    {
        escreve.innerHTML = `O número ${n1} é maior que o número ${n2}`;
    }else if(n1 < n2){
        escreve.innerHTML = `O número ${n2} é maior que o número ${n1}`;
    }
    else{
        escreve.innerHTML = `O número ${n2} é igual ao ${n1}`;
    }
});
