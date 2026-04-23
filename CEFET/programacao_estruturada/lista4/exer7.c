/*
AUTOR: PEDRO GABRIEL SCHUENCK BITTENCOURT
DATA: 23/04/2026
*/

#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int retornaPos(char);
int verificaMinus(char);



int main(){
    setlocale(LC_ALL, "Portuguese");
    char letra;
    int pos;
    fprintf(stdout, "Digite sua letra: ");
    fscanf(stdin, "%c", &letra);
    pos = retornaPos(letra);
    fprintf(stdout, "A posição de %c é %d", letra, pos);

}

int verificaMinus(char caracter){
    if(caracter >= 'a' && caracter <= 'z'){
        return 1;
    }
    return 0;
}

int retornaPos(char caracter){
    if(caracter >= 'a' && caracter <= 'z' || caracter >= 'A' && caracter <= 'Z'){
        if(verificaMinus(caracter)){
            return caracter - 'a' + 1;
        }else{
            return caracter - 'A' + 1;
        }
    }else{
        return 0;
    }
}


