/*
AUTOR: PEDRO GABRIEL SCHUENCK BITTENCOURT
DATA: 23/04/2026
*/

#include <stdio.h>
#include <stdlib.h>

float operacao(float, float, char);

int main(){
    float n1, n2, result;
    char operador;
    fprintf(stdout, "Digite o n1: ");
    fscanf(stdin, "%f", &n1);
    fprintf(stdout, "Digite o operador: ");
    fscanf(stdin, " %c", &operador);
    fprintf(stdout, "Digite o n2: ");
    fscanf(stdin, "%f", &n2);
    result = operacao(n1, n2, operador);
    fprintf(stdout, "O resultado de %.2f %c %.2f eh: %.2f", n1, operador, n2, result);
}

float operacao(float n1, float n2, char op){
    if(op == '+'){
        return n1 + n2;
    }else if(op == '-'){
        return n1 - n2;
    }else if(op == '*' || op == 'x' || op == 'X'){
        return n1 * n2;
    }else if(op == '/' || op == ':'){
        return n1 / n2;
    }else{
        return 0;
    }
}
