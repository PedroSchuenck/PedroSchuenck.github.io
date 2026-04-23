/*
AUTOR: PEDRO GABRIEL SCHUENCK BITTENCOURT
DATA: 23/04/2026
*/

#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

void imprimeNotas(int);

int main(){
    setlocale(LC_ALL, "Portuguese");
    int valor;
    fprintf(stdout, "Digite o valor: ");
    fscanf(stdin, "%d", &valor);
    imprimeNotas(valor);
}


void imprimeNotas(int valor){
    int sobra = 0;
    int cedula500 = 0;
    int cedula100 = 0;
    int cedula50 = 0;
    int cedula10 = 0;
    int cedula5 = 0;
    int cedula1 = 0;

    if(valor >= 500 && (valor / 500) >= 1){
        cedula500 = valor / 500;
        sobra = valor - (500 * cedula500);
    }else{
        sobra = valor;
    }
    if(sobra >= 100 && sobra / 100 >= 1){
        cedula100 = sobra / 100;
        sobra = sobra - (cedula100 * 100);
    }
    if(sobra >= 50 && sobra / 50 >= 1){
        cedula50 = sobra / 50;
        sobra = sobra - (cedula50 * 50);
    }
    if(sobra >= 10 && sobra / 10 >= 1){
        cedula10 =  sobra / 10;
        sobra = sobra - (cedula10 * 10);
    }
    if(sobra >= 5 && sobra / 5 >= 1){
        cedula5 =  sobra / 5;
        sobra = sobra - (cedula5 * 5);
    }
    if(sobra >= 1 && sobra / 1 >= 1){
        cedula1 = sobra / 1;
        sobra = sobra - (cedula1 * 1);
    }

    if(cedula500 >= 1){
        fprintf(stdout, "\n%d cedula(s) de X$500", cedula500);
    }

    if(cedula100 >= 1){
        fprintf(stdout, "\n%d cédula(s) de X$100", cedula100);
    }

    if(cedula50 >= 1){
        fprintf(stdout, "\n%d cédula(s) de X$50", cedula50);
    }

    if(cedula10 >= 1){
        fprintf(stdout, "\n%d cédula(s) de X$10", cedula10);
    }

    if(cedula5 >= 1){
        fprintf(stdout, "\n%d cédula(s) de X$5", cedula5);
    }

    if(cedula1 >= 1){
        fprintf(stdout, "\n%d cédula(s) de X$1", cedula1);
    }
}
