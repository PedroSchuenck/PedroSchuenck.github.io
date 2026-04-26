/*
AUTOR: PEDRO GABRIEL SCHUENCK BITTENCOURT
DATA: 26/04/2026
*/

#include <stdio.h>
#include <stdlib.h>

void fibonacci(int);
int fibonacciRec(int);

int main(){
    int delimitador, result;
    fprintf(stdout, "Digite seu delimitador: ");
    fscanf(stdin, "%d", &delimitador);
    //fibonacci(delimitador);
    result = fibonacciRec(delimitador);
    fprintf(stdout, "O %d da sequencia de fibonacci eh: %d", delimitador, result);
}

void fibonacci(int delimitador){
    int i = 0;
    int aux1 = 0;
    int aux2 = 1;
    int seq = 0;
    while(i < delimitador){
        fprintf(stdout, "%d ", aux1);
        seq = aux1 + aux2;
        aux1 = aux2;
        aux2 = seq;
        i++;
    }
}

int fibonacciRec(int n){
    if(n == 1){
        return 0;
    }else if(n == 2){
        return 1;
    }
    return fibonacciRec(n-1) + fibonacciRec(n-2);
}
