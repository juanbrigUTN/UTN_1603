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
        p("\n\n-->Seleccione la función que desea realizar<--");
        p("\n1. Imprimir los primeros n números de Fibonacci");
        p("\n2. Imprimir todos los números primos dentro de un rango ingresado");
        p("\n0. Salir del menú");
        p("\nOpción: ");
        s("%d", &op);

        switch (op)
        {
        case 1:
        {
            // Fórmula de Fibonacci: https://www.youtube.com/watch?v=N0gr6nK6lgU&ab_channel=Derivando
            int n, a = 0, b = 1, temp, i = 0;

            do
            {
                p("Ingrese hasta qué número de Fibonacci quiere imprimir (mayor que 0): ");
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
            p("Ingrese el rango para buscar números primos: ");
            // A implementar
            break;

        case 0:
            p("Saliendo del programa...\n");
            break;

        default:
            p("Opción inválida. Por favor, intentá de nuevo.\n");
        }

    }
    while (op != 0);

    return 0;
}
