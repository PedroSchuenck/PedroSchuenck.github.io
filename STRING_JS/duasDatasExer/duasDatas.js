let btexecuta = document.getElementById("executa");
let escreve = document.getElementById("resultado");

function duasDatas(){
let data1 = document.getElementById("data1").value;
let data2 = document.getElementById("data2").value;
let data1_obj = new Date(data1.split('/').reverse().join('-'));
let data2_obj = new Date(data2.split('/').reverse().join('-'));
let diferenca = Math.abs((data2_obj - data1_obj) / (1000 * 60 * 60 * 24 * 7));
let diferencaInt = Math.floor(diferenca);
escreve.innerHTML = `A diferença entre as datas em semanas é de ${diferencaInt} semanas.`;
}

btexecuta.addEventListener('click', duasDatas);