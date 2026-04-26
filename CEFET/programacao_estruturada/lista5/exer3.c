/*
AUTOR: PEDRO GABRIEL SCHUENCK BITTENCOURT
DATA: 23/04/2026
*/

#include <stdio.h>
#include <stdlib.h>

int verificaPrimo(int);
int verificaPrimoRec(int, int, int);

int main(){
    int num, primo;

    fprintf(stdout, "Digite seu numero: ");
    fscanf(stdin, "%d", &num);

    primo = verificaPrimo(num);
    fprintf(stdout, "\nIterativo: %d", primo);

    // começa com i = n e contador = 0
    primo = verificaPrimoRec(num, num, 0);
    fprintf(stdout, "\nRecursivo: %d", primo);

    return 0;
}

int verificaPrimo(int n){
    int contador = 0;
    int i = 1;

    while(i <= n){
        if(n % i == 0){
            contador += 1;
        }
        i++;
    }

    if(contador == 2){
        return 1;
    }else{
        return 0;
    }
}

int verificaPrimoRec(int n, int i, int contador){

    // caso base: terminou de testar divisores
    if(i == 0){
        if(contador == 2){
            return 1;
        }else{
            return 0;
        }
    }

    // se for divisor, incrementa contador
    if(n % i == 0){
        return verificaPrimoRec(n, i - 1, contador + 1);
    }else{
        return verificaPrimoRec(n, i - 1, contador);
    }
}
