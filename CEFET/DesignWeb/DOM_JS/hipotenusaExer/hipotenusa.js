const executa = document.querySelector("#calculo");
const escreve = document.querySelector("#resultado");

executa.addEventListener('click', function hipotenusa(){
const cateto1 = parseFloat( document.querySelector("#numero1").value);
const cateto2 = parseFloat( document.querySelector("#numero2").value);
const hipo = Math.sqrt(Math.pow(cateto1, 2) + Math.pow(cateto2, 2));
escreve.innerHTML = `A hipotenusa é: ${hipo}`;
return hipo;
});