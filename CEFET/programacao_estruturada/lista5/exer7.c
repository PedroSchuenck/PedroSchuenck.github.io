/*
AUTOR: PEDRO GABRIEL SCHUENCK BITTENCOURT
DATA: 26/04/2026
*/

#include <stdio.h>
#include <stdlib.h>

void aproximaRaiz(int);
void aproximaRaizRec(double, double, int );

int main(){
    int valor;
    fprintf(stdout, "Digite o valor da raiz: ");
    fscanf(stdin, "%d", &valor);
    aproximaRaizRec(0, valor, valor);
}

void aproximaRaiz(int n){
    int i = 0;
    double a, b, c;
    a = 0;
    b = n;
    while(b - a > 0.000001){
        c = (a+b)/2;
        if((c*c) > n){
            b = c;
        }else if((c*c) <= n){
            a = c;
        }
        printf("Raiz aproximada: %lf\n", (a + b) / 2);
        i++;
    }
}

void aproximaRaizRec(double a, double b, int n){
    double c;

    if ((b - a) <= 0.000001){
        printf("Raiz aproximada final: %lf\n", (a + b) / 2);
        return;
    }

    c = (a + b) / 2;

    printf("Raiz aproximada: %lf\n", c);

    if ((c * c) > n){
        aproximaRaizRec(a, c, n);
    } else {
        aproximaRaizRec(c, b, n);
    }
}

