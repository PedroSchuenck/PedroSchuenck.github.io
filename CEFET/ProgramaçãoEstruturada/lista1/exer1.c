/*
AUTOR: PEDRO GABRIEL SCHUENCK BITTENCOURT
DATA: 16/03/2026
*/

#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

void imprimeTexto(char *);

int main(){
    const int TAM = 80;
    char * texto;
    texto = (char *)malloc(sizeof(char)*TAM);

    setlocale(LC_ALL, "Portuguese");
    fprintf(stdout,"Digite seu texto: ");
    fgets(texto, TAM, stdin);
    imprimeTexto(texto);
    free(texto);
}

void imprimeTexto(char * texto){
    fprintf(stdout, "Seu texto é: %s", texto);
}
