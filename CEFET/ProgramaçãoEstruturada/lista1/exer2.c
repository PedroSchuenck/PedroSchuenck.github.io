/*
AUTOR: PEDRO GABRIEL SCHUENCK BITTENCOURT
DATA: 16/03/2026
*/

#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <ctype.h>

void imprimeDados(char *, int, int, int, float, char);

int main(){
    const int TAM = 80;
    char * nome;
    int dia, mes, ano;
    float salario;
    char chefe;

    nome = (char *)malloc(sizeof(char)*TAM);

    setlocale(LC_ALL, "Portuguese");

    fprintf(stdout, "Digite seu nome: ");
    fgets(nome, TAM, stdin);
    fprintf(stdout, "Digite o dia do nasc: ");
    fscanf(stdin, "%d", &dia);
    fprintf(stdout, "Digite o mes do nasc: ");
    fscanf(stdin, "%d", &mes);
    fprintf(stdout, "Digite o ano do nasc: ");
    fscanf(stdin, "%d", &ano);
    fprintf(stdout, "Digite o seu salário: ");
    fscanf(stdin, "%f", &salario);
    fprintf(stdout, "Chefe [S/F]: ");
    fscanf(stdin, " %c", &chefe);
    imprimeDados(nome, dia, mes, ano, salario, chefe);
    free(nome);
    return 0;
}

void imprimeDados(char * nome, int dia, int mes, int ano, float salario, char chefe){
    fprintf(stdout, "\n Meu nome é: %s nasci em %d/%d/%d \n atualmente ganho %.2f \n é chefe? %c", nome, dia, mes, ano, salario, toupper(chefe));
}
