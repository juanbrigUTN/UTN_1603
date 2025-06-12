#include <math.h>
#include <stdio.h>
#define p printf
#define s scanf

int main (){;
    int radio,altura;
    float vol_cilin;
    p("Ingrese el redio del cilindro: ");
    s ("%d", &radio);
    p("Ingrese la altura del cilindro: ");
    s ("%d", &altura);
    vol_cilin=3.14*pow(radio,2)*altura;
    p("El volumen del cilindro es: %.2f",vol_cilin);
    return 0;
};