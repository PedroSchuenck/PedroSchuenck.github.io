let btexecuta = document.getElementById("executa");
let escreve = document.getElementById("resultado");

const meses = {
    '01': 'janeiro', '02': 'fevereiro', '03': 'março', '04': 'abril', '05': 'maio', '06': 'junho',
    '07': 'julho', '08': 'agosto', '09': 'setembro', '10': 'outubro', '11': 'novembro', '12': 'dezembro'
  };
  
  btexecuta.addEventListener('click', function data(){
    let dataNascimento = [];
    dataNascimento = document.getElementById("data").value;
  
    
    const partesData = dataNascimento.split('-');
    console.log(partesData)
    console.log(partesData)
    const dia = partesData[2];
    const mes = meses[partesData[1]];
    const ano = partesData[0];
    
    const dataPorExtenso = `${dia} de ${mes} de ${ano}`;
   
    escreve.innerHTML = dataPorExtenso;
  })
