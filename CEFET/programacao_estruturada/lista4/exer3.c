#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

void verificaDivisao(int, int);

int main(){
    int n1, n2;

    setlocale(LC_ALL, "Portuguese");

    fprintf(stdout, "Digite n1: ");
    fscanf(stdin, "%d", &n1);

    fprintf(stdout, "Digite n2: ");
    fscanf(stdin, "%d", &n2);

    verificaDivisao(n1, n2);

    if(n1 % 2 == 0){
        fprintf(stdout, "\nn1 é par");
    }else{
        fprintf(stdout, "\nn1 é ímpar");
    }

    if(n2 % 2 == 0){
        fprintf(stdout, "\nn2 é par");
    }else{
        fprintf(stdout, "\nn2 é ímpar");
    }

    return 0;
}

void verificaDivisao(int n1, int n2){
    if(n2 == 0){
        fprintf(stdout, "\nNão existe divisão por zero");
    }else if(n1 % n2 == 0){
        fprintf(stdout, "\nn1 é divisível por n2");
    }else{
        fprintf(stdout, "\nn1 não é divisível por n2");
    }
}
