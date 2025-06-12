#include <stdio.h>
#include <locale.h>
#define p printf
#define s scanf

int main(void)
{
    setlocale(LC_ALL, "spanish");
    int op;

    do
    {
        p("\n\n-->Seleccione la funci�n que desea realizar<--");
        p("\n1. Imprimir los primeros n n�meros de Fibonacci");
        p("\n2. Imprimir todos los n�meros primos dentro de un rango ingresado");
        p("\n0. Salir del men�");
        p("\nOpci�n: ");
        s("%d", &op);

        switch (op)
        {
        case 1:
        {
            // F�rmula de Fibonacci: https://www.youtube.com/watch?v=N0gr6nK6lgU&ab_channel=Derivando
            int n, a = 0, b = 1, temp, i = 0;

            do
            {
                p("Ingrese hasta qu� n�mero de Fibonacci quiere imprimir (mayor que 0): ");
                s("%d", &n);
                if (n <= 0)
                    p("La cantidad debe ser mayor que 0.\n");
            }
            while (n <= 0);

            p("Serie de Fibonacci:\n");
            while (i < n)
            {
                p("%d\n", a);
                temp = a + b;
                a = b;
                b = temp;
                i++;
            }
            p("\n");
            break;
        }

        case 2:
            p("Ingrese el rango para buscar n�meros primos: ");
            // A implementar
            break;

        case 0:
            p("Saliendo del programa...\n");
            break;

        default:
            p("Opci�n inv�lida. Por favor, intent� de nuevo.\n");
        }

    }
    while (op != 0);

    return 0;
}
