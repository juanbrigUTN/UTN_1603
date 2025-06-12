#include <stdio.h>

int main ()
{
    int edad;
    printf ("Ingrese su edad\n");
    scanf ("%d",&edad);

    if (edad<=12);
        printf ("\n\n Esta en primaria");

    if (edad>12 && edad<=18);
        printf  ("\n\n Esta en el secundario");

    if (edad>18);
        printf  ("\n\n Esta en la universidad");

    return 0;
}
