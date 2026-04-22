/*
AUTOR: PEDRO GABRIEL SCHUENCK BITTENCOURT
DATA: 21/04/2026
*/

#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

float celsiusTofaren(float);

int main(){
    float celsius, resultado;
    fprintf(stdout, "Digite a temperatura em celsius: ");
    fscanf(stdin, "%f", &celsius);
    resultado = celsiusTofaren(celsius);
    fprintf(stdout, "Farenheit: %.1f", resultado);

}

float celsiusTofaren(float C){
    float faren = 1.8 * C + 32;
    return faren;
}
