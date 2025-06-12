#include <stdio.h>
#include <locale.h>
int main ()
{
    setlocale(LC_ALL, "spanish");
    int mes;
    char nom;
    printf("Ingrese un número de mes: (entre 1 y 12) ");
    scanf("%d",&mes);
    if (mes>=1 && mes<=12)
    {
        switch (mes)
        {
        case 1:
            nom='E';
            break;
        case 2:
            printf ("Febrero");
            break;
        case 3:
            printf ("Marzo");
            break;
        case 4:
            printf ("Abril");
            break;
        case 5:
            printf ("Mayo");
            break;
        case 6:
            printf ("Junio");
            break;
        case 7:
            printf ("Julio");
            break;
        case 8:
            printf ("Agosto");
            break;
        case 9:
            printf ("Septiembre");
            break;
        case 10:
            printf ("Octubre");
            break;
        case 11:
            printf ("Noviembre");
            break;
        case 12:
            printf ("Diciembre");
        }
        if (mes==3 || mes==1 ||mes==5 || mes==7|| mes==8 || mes==10 || mes==12)
            printf("es %c y tiene 31 dias",nom);
        else if (mes==2)
            printf("tiene 28 o 29 dias");
        else
            printf("tiene 30 dias");
    }
    else
        printf("Es un numero incorrecto\n\n\n");

return 0;
}
