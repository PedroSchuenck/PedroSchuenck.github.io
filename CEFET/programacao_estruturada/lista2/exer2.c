/*
AUTOR: PEDRO GABRIEL SCHUENCK BITTENCOURT
DATA: 21/04/2026
*/

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <locale.h>

float retornaArea(float, float, float);
float retornaRad(float);

int main(){
    setlocale(LC_ALL, "Portuguese");
    float l1, l2, angulo, resultado;
    fprintf(stdout, "Digite o lado 1 do triângulo: ");
    fscanf(stdin, "%f", &l1);
    fprintf(stdout, "Digite o lado 2 do triângulo: ");
    fscanf(stdin, "%f", &l2);
    fprintf(stdout, "Digite seu ângulo: ");
    fscanf(stdin, "%f", &angulo);
    resultado = retornaArea(l1, l2, angulo);
    fprintf(stdout, "A área do seu triângulo é: %.2f", resultado);

}

float retornaArea(float l1, float l2, float ang){
    float area = (l1 * l2 * sin(retornaRad(ang))) / 2;
    return area;
}

float retornaRad(float G){
    const float PI = 3.141592;
    float rad = (PI * G) / 180.0;
    return rad;
}
