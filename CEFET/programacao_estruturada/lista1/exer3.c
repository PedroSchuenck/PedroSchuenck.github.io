#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

void imprimeNomeSobrenome(char *, char *);

int main(){
    setlocale(LC_ALL, "Portuguese");
    const int TAM = 80;
    char * nome, * sobrenome;
    nome = (char *)malloc(sizeof(char)* TAM);
    sobrenome = (char *)malloc(sizeof(char)* TAM);
    fprintf(stdout, "Digite seu nome: ");
    fscanf(stdin, "%s", nome);
    fprintf(stdout, "Digite seu sobrenome: ");
    fscanf(stdin, "%s", sobrenome);
    imprimeNomeSobrenome(nome, sobrenome);
    free(nome);
    free(sobrenome);

}

void imprimeNomeSobrenome(char * nome, char * sobrenome){
    fprintf(stdout, "Bem Vindo %s, %s", sobrenome, nome);
}
