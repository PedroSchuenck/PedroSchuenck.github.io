/*
AUTOR: PEDRO GABRIEL SCHUENCK BITTENCOURT
DATA: 22/04/2026
*/

#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

float retornaAbsoluto(float);

int main(){
    setlocale(LC_ALL, "Portuguese");
    float x, resultado;
    fprintf(stdout, "Digite seu número: ");
    fscanf(stdin, "%f" , &x);
    resultado = retornaAbsoluto(x);
    fprintf(stdout, "Valor absoluto: %.2f", resultado);
    return 0;
}

float retornaAbsoluto(float x){
    if(x >= 0){
        return x;
    }else{
        return x * -1;
    }
}

