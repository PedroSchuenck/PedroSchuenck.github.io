/*
AUTOR: PEDRO GABRIEL SCHUENCK BITTENCOURT
DATA: 23/04/2026
*/

#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

char * retornaMes(int);

int main(){
    setlocale(LC_ALL, "Portuguese");
    int mes;
    char * result;
    fprintf(stdout, "Digite o número do mês: ");
    fscanf(stdin, "%d", &mes);
    result = retornaMes(mes);
    fprintf(stdout, "O número %d equivale a %s", mes, result);
    return 0;
}

char * retornaMes(int mes){
    if(mes >= 1 && mes <= 12){
        if(mes == 1){
            return "Janeiro";
        }else if(mes == 2){
            return "Fevereiro";
        }else if(mes == 3){
            return "Março";
        }else if(mes == 4){
            return "Abril";
        }else if(mes == 5){
            return "Maio";
        }else if(mes == 6){
            return "Junho";
        }else if(mes == 7){
            return "Julho";
        }else if(mes == 8){
            return "Agosto";
        }else if(mes == 9){
            return "Setembro";
        }else if(mes == 10){
            return "Outubro";
        }else if(mes == 11){
            return "Novembro";
        }else if(mes == 12){
            return "Dezembro";
        }
    }else{
        return "";
    }
}
