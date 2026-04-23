/*
AUTOR: PEDRO GABRIEL SCHUENCK BITTENCOURT
DATA: 22/04/2026
*/

#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int verificaTriangulo(int, int, int);
int classificaTriangulo(int, int, int);

int main(){
    int a, b, c, result;
    setlocale(LC_ALL, "Portuguese");
    fprintf(stdout, "Digite o lado A: ");
    fscanf(stdin, "%d", &a);
    fprintf(stdout, "Digite o lado B: ");
    fscanf(stdin, "%d", &b);
    fprintf(stdout, "Digite o lado C: ");
    fscanf(stdin, "%d", &c);
    result = classificaTriangulo(a, b, c);
    fprintf(stdout, "Seu triângulo é classificado como: %d", result);
    return 0;
}

int verificaTriangulo(int a, int b, int c){
    if(a < (b + c) && b < (a + c) && c < (b + a)){
        return 1;
    }
    return 0;
}

int classificaTriangulo(int a, int b, int c){
    if(verificaTriangulo(a, b, c)){
        if(a != b && b != c && c != a){
            return 1;
        }
        else if(a == b && b != c || a == c && c != b || c == b && b != a ){
            return 2;
        }else{
            return 3;
        }
    }else{
        return 0;
    }
}
