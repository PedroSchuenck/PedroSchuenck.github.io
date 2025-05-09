<?php
function indicaGrauImc(float $peso, float $altura, int &$grau ):void{
    $imc = $peso / $altura**2;
    
    if($imc < 18.5){
        $grau = 0;
    }
    else if($imc <= 24.9){
        $grau = 1;
    }
    else if($imc <= 29.9){
        $grau = 2;
    }
    else if($imc <= 34.9){
        $grau = 3;
    }
    else if($imc <= 39.9){
        $grau = 4;
    }
    else{
        $grau = 5;
    }
}
// 0 -> abaixo do peso
// 1 -> peso normal
// 2 -> excesso de peso
// 3 -> obdesidade classe 1
// 4 -> obesidade classe 2
// 5 -> obesidade classe 3
function processaGrauImc(int $indiceGrau, string &$grau):void{
    switch($indiceGrau){
        case 0:
            $grau = "Seu IMC está considerado Abaixo Do Peso";
            break;
        case 1:
            $grau = "Seu IMC está considerado Peso Normal";
            break;
        case 2:
            $grau = "Seu IMC está considerado Excesso De Peso";
            break;
        case 3:
            $grau = "Seu IMC está considerado Obesidade Classe 1";
            break;
        case 4:
            $grau = "Seu IMC está considerado Obesidade Classe 2";
            break;
        default:
            $grau = "Seu IMC está considerado Obesidade Classe 3";
            break;
    }
}
?>

