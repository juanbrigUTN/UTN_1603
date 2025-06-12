#include <stdio.h>
#include <locale.h>
#include <ctype.h>
#define p printf
#define s scanf

int main(void)
{
    setlocale(LC_ALL, "spanish");

    int i = 1, flag = 0;
    float min, max, num;
    char op;

    p("\n--> Menú <--\n");
    p("(s) Ingresar un valor\n");
    p("(n) Salir del programa\n");
    p("Opción: ");
    s(" %c", &op);
    op = tolower(op);
    do
    {
        if (flag==1)
        {
            p("\n--> Menú <--\n");
            p("(s) Ingresar otro valor\n");
            p("(n) Salir del programa\n");
            p("Opción: ");
            s(" %c", &op);
            op = tolower(op);
        }
        switch (op)
        {
        case 's':
            p("Ingrese el %d° valor: ", i);
            s("%f", &num);

            if (flag == 0)
            {
                max = num;
                min = num;
                flag = 1;
            }

            if (num < min)
                min = num;

            if (num > max)
                max = num;

            i++;
            break;

        case 'n':
            if (flag)
            {
                p("\nSe ingresaron %d valores.\n", i - 1);
                p("Valor máximo ingresado: %.2f\n", max);
                p("Valor mínimo ingresado: %.2f\n", min);
            };
            p("Saliendo del programa...\n");
            break;

        default:
            p("El valor ingresado es incorrecto.\nIntente nuevamente.\n");
        }

    }
    while (op != 'n');


    return 0;
}
