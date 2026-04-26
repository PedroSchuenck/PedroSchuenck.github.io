/*
AUTOR: PEDRO GABRIEL SCHUENCK BITTENCOURT
DATA: 26/04/2026
*/

#include <stdio.h>
#include <stdlib.h>

/* --------- ITERATIVAS --------- */
int oposto(int);
int valorAbsoluto(int);
int subtracao(int, int);
int adicao(int, int);
int multiplicacao(int, int);
int divisao(int, int);
int resto(int, int);

/* --------- RECURSIVAS --------- */
int opostoRec(int);
int valorAbsolutoRec(int);
int subtracaoRec(int, int);
int adicaoRec(int, int);
int multiplicacaoRec(int, int);
int divisaoRec(int, int);
int restoRec(int, int);

int main(){
    int valor, valor2;

    printf("Digite seu valor: ");
    scanf("%d", &valor);

    printf("Digite seu segundo valor: ");
    scanf("%d", &valor2);

    printf("\n--- ITERATIVO ---\n");
    printf("Oposto: %d\n", oposto(valor));
    printf("Valor Absoluto: %d\n", valorAbsoluto(valor));
    printf("Subtracao: %d\n", subtracao(valor, valor2));
    printf("Adicao: %d\n", adicao(valor, valor2));
    printf("Multiplicacao: %d\n", multiplicacao(valor, valor2));
    printf("Divisao: %d\n", divisao(valor, valor2));
    printf("Resto: %d\n", resto(valor, valor2));

    printf("\n--- RECURSIVO ---\n");
    printf("Oposto: %d\n", opostoRec(valor));
    printf("Valor Absoluto: %d\n", valorAbsolutoRec(valor));
    printf("Subtracao: %d\n", subtracaoRec(valor, valor2));
    printf("Adicao: %d\n", adicaoRec(valor, valor2));
    printf("Multiplicacao: %d\n", multiplicacaoRec(valor, valor2));
    printf("Divisao: %d\n", divisaoRec(valor, valor2));
    printf("Resto: %d\n", restoRec(valor, valor2));

    return 0;
}

/* --------- ITERATIVAS --------- */

int oposto(int x){
    int op = 0, i;

    if(x > 0){
        for(i = 0; i < x; i++) op--;
    } else {
        for(i = 0; i < -x; i++) op++;
    }
    return op;
}

int valorAbsoluto(int x){
    int i, res = 0;

    if(x < 0){
        for(i = 0; i < -x; i++) res++;
        return res;
    }
    return x;
}

int subtracao(int n1, int n2){
    int i;
    for(i = 0; i < n2; i++) n1--;
    return n1;
}

int adicao(int n1, int n2){
    int i;
    for(i = 0; i < n2; i++) n1++;
    return n1;
}

int multiplicacao(int n1, int n2){
    int i, j, res = 0;

    for(i = 0; i < n2; i++){
        for(j = 0; j < n1; j++){
            res++;
        }
    }
    return res;
}

int divisao(int n1, int n2){
    int cont = 0;

    while(n1 >= n2){
        int i;
        for(i = 0; i < n2; i++){
            n1--;
        }
        cont++;
    }
    return cont;
}

int resto(int n1, int n2){
    while(n1 >= n2){
        int i;
        for(i = 0; i < n2; i++){
            n1--;
        }
    }
    return n1;
}

/* --------- RECURSIVAS --------- */

int opostoRec(int x){
    if(x == 0) return 0;
    if(x > 0) return -1 + opostoRec(x - 1);
    return 1 + opostoRec(x + 1);
}

int valorAbsolutoRec(int x){
    if(x >= 0) return x;
    return 1 + valorAbsolutoRec(x + 1);
}

int subtracaoRec(int n1, int n2){
    if(n2 == 0) return n1;
    return subtracaoRec(n1 - 1, n2 - 1);
}

int adicaoRec(int n1, int n2){
    if(n2 == 0) return n1;
    return adicaoRec(n1 + 1, n2 - 1);
}

int multiplicacaoRec(int n1, int n2){
    if(n2 == 0) return 0;
    return n1 + multiplicacaoRec(n1, n2 - 1);
}

int divisaoRec(int n1, int n2){
    if(n1 < n2) return 0;
    return 1 + divisaoRec(n1 - n2, n2);
}

int restoRec(int n1, int n2){
    if(n1 < n2) return n1;
    return restoRec(n1 - n2, n2);
}
