#include <stdio.h>

int main () {
    float x, y;

    printf ("Ingrese el primer numero");
    scanf ("%f",&x);
    printf ("Ingrese el primer numero");
    scanf ("%f",&y);

    if (x==y) {
        printf ("Los numeros son iguales");
    } else {
        printf ("Los numeros no son iguales");
    };
return 0;
};
