/*
AUTOR: PEDRO GABRIEL SCHUENCK BITTENCOURT
DATA: 21/04/2026
*/

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <locale.h>

float retornaDistancia(float, float, float ,float);

int main(){
    setlocale(LC_ALL, "Portuguese");
    float Xa, Xb, Ya, Yb, resultado;
    fprintf(stdout, "Digite Xa: ");
    fscanf(stdin, "%f", &Xa);
    fprintf(stdout, "Digite Xb: ");
    fscanf(stdin, "%f", &Xb);
    fprintf(stdout, "Digite Ya: ");
    fscanf(stdin, "%f", &Ya);
    fprintf(stdout, "Digite Yb: ");
    fscanf(stdin, "%f", &Yb);
    resultado = retornaDistancia(Xa, Xb, Ya, Yb);
    fprintf(stdout, "A distância é: %.2f", resultado);
}

float retornaDistancia(float Xa, float Xb, float Ya, float Yb){
    float distancia = sqrt(pow((Xa - Xb), 2) + pow((Ya - Yb), 2));
    return distancia;
}
