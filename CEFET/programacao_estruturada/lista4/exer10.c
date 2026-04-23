/*
AUTOR: PEDRO GABRIEL SCHUENCK BITTENCOURT
DATA: 23/04/2026
*/

#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int verificaVogal(char);
int verificaMinus(char);
int verificaMaius(char);
int verificaLetra(char);
int verificaConso(char);
int verificaAlgar(char);

int main(){
    setlocale(LC_ALL, "Portuguese");
    char caracter;
    fprintf(stdout, "Digite seu caractere: ");
    fscanf(stdin, "%c", &caracter);

    if(verificaLetra(caracter)){
        fprintf(stdout, "\nSeu caracter é uma letra");
    }

    if(verificaVogal(caracter)){
        fprintf(stdout, "\nSeu caracter é uma Vogal");
    }

    if(verificaConso(caracter)){
        fprintf(stdout, "\nSeu caracter é uma consoante");
    }

    if(verificaMaius(caracter)){
        fprintf(stdout, "\nSeu caracter é uma maiúscula");
    }

    if(verificaMinus(caracter)){
        fprintf(stdout, "\nSeu caracter é uma minúscula");
    }

    if(verificaAlgar(caracter)){
        fprintf(stdout, "\nSeu caracter é um algarismo");
    }

    return 0;
}

int verificaVogal(char caracter){
    return caracter == 'a' || caracter == 'A' || caracter == 'e' || caracter == 'E' || caracter == 'i' || caracter == 'I' || caracter == 'o' || caracter == 'O' || caracter == 'u' || caracter == 'U' ? 1 : 0;
}

int verificaMaius(char caracter){
    return caracter >= 'A' && caracter <= 'Z' ? 1 : 0;
}

int verificaMinus(char caracter){
    return caracter >= 'a' && caracter <= 'z' ? 1 : 0;
}

int verificaConso(char caracter){
    return verificaMaius(caracter) || verificaMinus(caracter) && !verificaVogal(caracter) ? 1 : 0;
}

int verificaLetra(char caracter){
    return verificaConso(caracter) || verificaVogal(caracter) ? 1 : 0;
}

int verificaAlgar(char caracter){
    return !verificaLetra(caracter) && caracter >= '0' && caracter <= '9' ? 1 : 0;
}




