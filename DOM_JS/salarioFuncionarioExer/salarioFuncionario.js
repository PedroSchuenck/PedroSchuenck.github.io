const executa = document.getElementById("calculo");
const escreve = document.getElementById("resultado");
executa.addEventListener('click', function(){
const salario = parseFloat( document.getElementById("numero1").value);
const porcentagem = parseFloat(document.getElementById("numero2").value);
const totalDaPorcentagem = ((porcentagem/100)*salario) + salario;
escreve.innerHTML = `O reajuste do salário irá para: ${totalDaPorcentagem}`;
});
