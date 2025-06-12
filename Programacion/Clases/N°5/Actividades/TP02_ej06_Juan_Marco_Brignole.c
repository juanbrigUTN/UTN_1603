#include <stdio.h>

int main ()
{
    int x, z;

    printf("Ingrese el 1er numero: ");
    scanf("%d", &x);

    printf("Ingrese el 2do numero: ");
    scanf("%d", &z);

    if ((x + z) % 2 == 0)
    {
        printf("\nLa suma de %d y %d es par\n", x, z);
    }
    else
    {
        printf("La suma de %d y %d es impar\n", x, z);
    }
    return 0;
}
