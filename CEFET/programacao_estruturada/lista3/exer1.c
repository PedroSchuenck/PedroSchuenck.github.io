/*
AUTOR: PEDRO GABRIEL SCHUENCK BITTENCOURT
DATA: 21/04/2026
*/

#include <stdio.h>
#include <stdlib.h>
#include <locale.h>


void retornaPontoMedio(float *, float, float *, float);

int main(){
    setlocale(LC_ALL, "Portuguese");
    float xi, xf, yi, yf;
    fprintf(stdout, "Digite Xi: ");
    fscanf(stdin, "%f", &xi);
    fprintf(stdout, "Digite Xf: ");
    fscanf(stdin, "%f", &xf);
    fprintf(stdout, "Digite Yi: ");
    fscanf(stdin, "%f", &yi);
    fprintf(stdout, "Digite Yf: ");
    fscanf(stdin, "%f", &yf);
    retornaPontoMedio(&xi, xf, &yi, yf);
    fprintf(stdout, "O ponto médio é: (%.2f, %.2f)", xi, yi);
}

void retornaPontoMedio(float * xi, float xf, float * yi, float yf){
    float xm = (*xi + xf) / 2;
    float ym = (*yi + yf) / 2;
    *xi = xm;
    *yi = ym;
}
