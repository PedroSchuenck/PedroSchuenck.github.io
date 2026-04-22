/*
AUTOR: PEDRO GABRIEL SCHUENCK BITTENCOURT
DATA: 21/04/2026
*/

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <locale.h>

float retornaDelta(float, float, float);

int main(){
    float A, B, C, resultado;
    setlocale(LC_ALL, "Portuguese");
    fprintf(stdout, "Digite seu ângulo A: ");
    fscanf(stdin, "%f", &A);
    fprintf(stdout, "Digite seu ângulo B: ");
    fscanf(stdin, "%f", &B);
    fprintf(stdout, "Digite seu ângulo C: ");
    fscanf(stdin, "%f", &C);
    resultado = retornaDelta(A, B, C);
    fprintf(stdout, "Delta: %.2f", resultado);

}

float retornaDelta(float A, float B, float C){
    float delta = pow(B, 2) - 4 * A * C;
    return delta;
}
