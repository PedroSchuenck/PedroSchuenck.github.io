/*
AUTOR: PEDRO GABRIEL SCHUENCK BITTENCOURT
DATA: 21/04/2026
*/

#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

void somaFracao(int *, int *, int, int);
void subtracaoFracao(int *, int *, int, int);
void multiplicacaoFracao(int * , int *, int, int);
void divisaoFracao(int *, int *, int, int);

int main(){
    int Nx, Dx, Ny, Dy, NxOriginal, DxOriginal;
    setlocale(LC_ALL, "Portuguese");
    fprintf(stdout, "Digite Nx: ");
    fscanf(stdin, "%d", &Nx);
    fprintf(stdout, "Digite Dx: ");
    fscanf(stdin, "%d", &Dx);
    fprintf(stdout, "Digite Ny: ");
    fscanf(stdin, "%d", &Ny);
    fprintf(stdout, "Digite Dy: ");
    fscanf(stdin, "%d", &Dy);

    NxOriginal = Nx;
    DxOriginal = Dx;

    somaFracao(&Nx, &Dx, Ny, Dy);
    fprintf(stdout, "Resultado soma: %d/%d", Nx, Dx);

    Nx =  NxOriginal;
    Dx = DxOriginal;

    subtracaoFracao(&Nx, &Dx, Ny, Dy);
    fprintf(stdout, "\nResultado subtração: %d/%d", Nx, Dx);

    Nx =  NxOriginal;
    Dx = DxOriginal;

    multiplicacaoFracao(&Nx, &Dx, Ny, Dy);
    fprintf(stdout, "\nResultado multiplicação: %d/%d", Nx, Dx);

    Nx =  NxOriginal;
    Dx = DxOriginal;

    divisaoFracao(&Nx, &Dx, Ny, Dy);
    fprintf(stdout, "\nResultado divisão: %d/%d", Nx, Dx);

    return 0;

}

void somaFracao(int * Nx, int * Dx, int Ny, int Dy){
    int numerador = *Nx * Dy + Ny * *Dx;
    int denominador = *Dx * Dy;
    *Nx = numerador;
    *Dx = denominador;
}

void subtracaoFracao(int * Nx, int * Dx, int Ny, int Dy){
    int numerador = *Nx * Dy - Ny * *Dx;
    int denominador = *Dx * Dy;
    *Nx = numerador;
    *Dx = denominador;
}

void multiplicacaoFracao(int * Nx, int * Dx, int Ny, int Dy){
    int numerador = *Nx * Ny;
    int denominador = *Dx * Dy;
    *Nx = numerador;
    *Dx = denominador;
}

void divisaoFracao(int *Nx, int *Dx, int Ny, int Dy){
    *Nx = (*Nx * Dy); *Dx = (*Dx * Ny);
}
