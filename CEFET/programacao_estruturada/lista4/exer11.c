#include <stdio.h>

int main(){
    char c;
    printf ("\nAperte uma tecla qualquer: ");
    c = getchar();
    if ((c >='a' ) && (c <= 'z')) c = c + 'A' - 'a';
    if (c == 'A' || c == 'E' || c == 'I' || c == 'O' || c == 'U')
        printf ("\nO caractere %c e' vogal", c);
    else
        ("\nO caractere %c nao e' vogal", c);
    return 0;
}

