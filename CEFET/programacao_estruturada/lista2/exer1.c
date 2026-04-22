/*
AUTOR: PEDRO GABRIEL SCHUENCK BITTENCOURT
DATA: 21/04/2026
*/

#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

float retornaRad(float);

int main(){
    float graus, resultado;
    setlocale(LC_ALL, "Portuguese");
    fprintf(stdout, "Digite seu ângulo em graus: ");
    fscanf(stdin, "%f", &graus);
    resultado = retornaRad(graus);
    fprintf(stdout, "Ângulo em radiano: %.3f", resultado);
}

float retornaRad(float G){
    const float pi = 3.141592;
    float rad = (pi * G) / 180.0;
    return rad;
}
