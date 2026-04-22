/*
AUTOR: PEDRO GABRIEL SCHUENCK BITTENCOURT
DATA: 21/04/2026
*/

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <locale.h>

float retornaVolume(float);

int main(){
    float raio, resultado;
    fprintf(stdout, "Digite o raio da esfera: ");
    fscanf(stdin, "%f", &raio);
    resultado = retornaVolume(raio);
    fprintf(stdout, "Raio: %.2f", resultado);
}

float retornaVolume(float R){
    const float PI = 3.141592;
    float V = 4.0/3.0 * PI * pow(R, 3); // 4 / 3 != 4.0 / 3.0
    return V;
}
