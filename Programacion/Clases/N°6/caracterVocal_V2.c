#include <stdio.h>
#include <locale.h>

int main ()
{
    char vocal, letra;
    printf("Ingrese un caracter: ");
    scanf(" %c", &vocal);
    letra=vocal;
    if (vocal>=65 && vocal<=90)
        vocal=vocal+32;
    if (vocal>=97 && vocal<=122)   // isalpha verifica si es una letra
    {
        switch (vocal)
        {
        case 'a':
        case 'e':
        case 'i':
        case 'o':
        case 'u':
            printf("La letra \"%c\" es vocal!\n",letra);
            break;
        default:
            printf("La letra \"%c\" no es vocal :(\n", letra);
        }
    }
    else
        printf("El caracter ingresado no es una letra :(\n");

    return 0;
}
