/*
AUTOR: PEDRO GABRIEL SCHUENCK BITTENCOURT
DATA: 23/04/2026
*/

#include <stdio.h>
#include <stdlib.h>

int piso(float);
int teto(float);
int pisoRec(float);
int tetoRec(float);

int main (){
    float n;
    int resultPiso, resultTeto;
    fprintf(stdout, "Digite seu numero: ");
    fscanf(stdin, "%f", &n);
    resultPiso = pisoRec(n);
    resultTeto = tetoRec(n);
    fprintf(stdout, "%d", resultPiso);
    fprintf(stdout, "\n");
    fprintf(stdout, "%d", resultTeto);
}

int piso(float n){
    int i = 0;
    while(i <= n){
        if(n == i)
            return n;
        i++;
    }
    return i - 1;
}

int teto(float n){
    int i = 0;
    while(i <= n){
        if(n == i)
            return n;
        i++;
    }
    return i;
}


int pisoRec(float x) {
    if (x >= 0 && x < 1) {
        return 0;
    }

    if (x < 0 && x > -1) {
        return -1;
    }

    if (x >= 1) {
        return 1 + pisoRec(x - 1);
    }

    return -1 + pisoRec(x + 1);
}


int tetoRec(float x) {
    // entre 0 e 1
    if (x > 0 && x <= 1) {
        return 1;
    }

    // entre -1 e 0
    if (x < 0 && x >= -1) {
        return 0;
    }

    // positivos
    if (x > 1) {
        return 1 + tetoRec(x - 1);
    }

    // negativos
    return -1 + tetoRec(x + 1);
}
