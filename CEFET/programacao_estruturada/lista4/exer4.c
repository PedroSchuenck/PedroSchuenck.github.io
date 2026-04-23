/*
AUTOR: PEDRO GABRIEL SCHUENCK BITTENCOURT
DATA: 22/04/2026
*/

#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

float retornaMaior(float, float);
float retornaMaiorTres(float, float, float);

int main(){
    float n1, n2, n3, result1, result2;
    setlocale(LC_ALL, "Portuguese");
    fprintf(stdout, "Digite n1: ");
    fscanf(stdin, "%f", &n1);
    fprintf(stdout, "Digite n2: ");
    fscanf(stdin, "%f", &n2);
    fprintf(stdout, "Digite n3: ");
    fscanf(stdin, "%f", &n3);
    result1 = retornaMaior(n1, n2);
    result2 = retornaMaiorTres(n1, n2, n3);
    fprintf(stdout, "Função 1: %.2f", result1);
    fprintf(stdout, "\nFunção 2: %.2f", result2);
    return 0;
}

float retornaMaior(float n1, float n2){
    if(n1 == n2){
        return 0;
    }else if(n1 > n2){
        return n1;
    }else{
        return n2;
    }
}

float retornaMaiorTres(float n1, float n2, float n3){
    return retornaMaior(n1, n2) > n3 ? retornaMaior(n1, n2) : n3;
}
