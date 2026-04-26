/*
AUTOR: PEDRO GABRIEL SCHUENCK BITTENCOURT
DATA: 23/04/2026
*/

#include <stdio.h>
#include <stdlib.h>

int calculaPotencia(int, int);
int calculaPotenciaRec(int, int);

int main(){
    int base, expo, result;

    fprintf(stdout, "Digite sua base: ");
    fscanf(stdin, "%d", &base);

    fprintf(stdout, "Digite seu expoente: ");
    fscanf(stdin, "%d", &expo);

    result = calculaPotencia(base, expo);
    fprintf(stdout, "\nIterativo: %d", result);

    result = calculaPotenciaRec(base, expo);
    fprintf(stdout, "\nRecursivo: %d", result);
}

int calculaPotencia(int base, int expoente){
    int result = 1;
    int i = 0;
    while(i < expoente){
        result = result * base;
        i++;
    }
    return result;
}

int calculaPotenciaRec(int base, int expoente){
    if(expoente == 0){
        return 1;
    }

    return base * calculaPotenciaRec(base, expoente - 1);
}
