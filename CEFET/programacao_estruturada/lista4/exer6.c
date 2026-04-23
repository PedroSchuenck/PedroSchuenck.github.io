/*
AUTOR: PEDRO GABRIEL SCHUENCK BITTENCOURT
DATA: 23/04/2026
*/

#include <stdio.h>
#include <stdlib.h>

int classificaImc(float, float);

int main(){
    float peso, altura;
    int classificacao;
    fprintf(stdout, "Digite seu peso: ");
    fscanf(stdin, "%f", &peso);
    fprintf(stdout, "Digite sua altura: ");
    fscanf(stdin, "%f", &altura);
    classificacao = classificaImc(peso, altura);
    fprintf(stdout, "Sua classificação IMC é: %d", classificacao);
}

int classificaImc(float peso, float altura){
    float imc = peso / (altura * altura);

    if(imc < 25.0){
        return 0;
    }else if(imc < 30.0){
        return 1;
    }else if(imc < 35.0){
        return 2;
    }else if(imc < 40.0){
        return 3;
    }else{
        return 4;
    }
}
