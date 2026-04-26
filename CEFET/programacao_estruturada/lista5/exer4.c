/*
AUTOR: PEDRO GABRIEL SCHUENCK BITTENCOURT
DATA: 23/04/2026
*/

#include <stdio.h>
#include <stdlib.h>

int calculaFatorial(int);
int fatorialRec(int);

int main(){
    int fator, fatorial;
    fprintf(stdout, "Digite o seu fator: ");
    fscanf(stdin, "%d", &fator);
    //fatorial = calculaFatorial(fator);
    fatorial = fatorialRec(fator);
    fprintf(stdout, "O fatorial de %d! eh: %d", fator, fatorial);

}

int calculaFatorial(int fator){
    int i = 1;
    int fatorial = 1;
    while( i <= fator){
        fatorial = fatorial * i;
        i++;
    }
    return fatorial;
}

int fatorialRec(int fator){
    if(fator == 0 || fator == 1){
        return 1;
    }else{
        return fator * fatorialRec(fator - 1);
    }
}
