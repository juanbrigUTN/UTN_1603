#include <stdio.h>

int main () {
    int x, y ;

    printf ("Ingrese el numero");
    scanf ("%d",&x);

    y = x%2;

    if (y==0) {
        printf ("El numero es par");
    } else {
        printf ("El numero no es par");
    };
return 0;
};
