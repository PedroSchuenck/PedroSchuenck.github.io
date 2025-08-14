
function IMC(peso, altura)
{
peso = document.getElementById("peso").value
altura = document.getElementById("altura").value
parseFloat(peso)
parseFloat(altura)
let IMC = peso / Math.pow(altura, 2);
return IMC;
}
let calculaIMC = IMC()
let escrevoNoHtml = document.getElementById("resultado")
let IMCclass = parseInt(calculaIMC)
console.log(IMCclass)
escrevoNoHtml.innerHTML = IMCclass

let escreveNoHtml2 = document.getElementById("resultado2")
let escreveNoHtml3 = document.getElementById("resultado3")
escreveNoHtml2.innerHTML = IMCclass

if(IMCclass < 18.5)
{
    escreveNoHtml3.innerHTML = `IMC indica peso baixo`
} else if(IMCclass < 25)
{
    escreveNoHtml3.innerHTML = `IMC indica peso normal`
} else if(IMCclass < 30)
{
    escreveNoHtml3.innerHTML = `IMC indica Sobrepeso`
} else if (IMCclass < 35)
{
    escreveNoHtml3.innerHTML = `IMC indica Obesidade Grau I`
} else if(IMCclass < 40)
{
    escreveNoHtml3.innerHTML = `IMC indica Obesidade Grau II`
} else if(IMCclass > 40)
{
    escreveNoHtml3.innerHTML = `IMC indica Obesidade Grau III`
}
