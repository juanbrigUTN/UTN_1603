#include <stdio.h>
#include <ctype.h> // Para isalpha()

int main ()
{
    char vocal;
    printf("Ingrese un caracter: ");
    scanf(" %c", &vocal);
    if (isalpha(vocal))   // isalpha verifica si es una letra
    {
        char letra;
        letra=vocal;
        letra=tolower(letra);
        switch (letra)
        {
        case 'a':
        case 'e':
        case 'i':
        case 'o':
        case 'u':
            printf("La letra \"%c\" es vocal!\n",vocal);
            break;
        default:
            printf("La letra \"%c\" no es vocal :(\n", vocal);
        }
    }
    else
        printf("El caracter ingresado no es una letra :(\n");
    return 0;
}
