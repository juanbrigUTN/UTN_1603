#include <stdio.h>

int main ()
{
    char op;
    int num1, num2, resultado;

    printf("Ingrese el simbolo de la operacion que quiere realizar \n+\n-\n/\n*\n");
    scanf("%c", &op);

    if (op == '+' || op == '-' || op == '/' || op == '*') {
        switch (op)
        {
        case '+':
            printf("Ingrese el 1er numero: ");
            scanf("%d", &num1);
            printf("Ingrese el 2do numero: ");
            scanf("%d", &num2);
            resultado = num1 + num2;
            printf("La suma entre %d y %d es: %d\n", num1, num2, resultado);
            break;

        case '-':
            printf("Ingrese el 1er numero: ");
            scanf("%d", &num1);
            printf("Ingrese el 2do numero: ");
            scanf("%d", &num2);
            resultado = num1 - num2;
            printf("La resta entre %d y %d es: %d\n", num1, num2, resultado);
            break;

        case '/':
            printf("Ingrese el 1er numero: ");
            scanf("%d", &num1);
            printf("Ingrese el 2do numero: ");
            scanf("%d", &num2);
            if (num2 == 0)
                printf("La division con 0 en el denominador no esta definida\n");
            else {
                resultado = num1 / num2;
                printf("La division de %d por %d es: %d\n", num1, num2, resultado);
            }
            break;

        case '*':
            printf("Ingrese el 1er numero: ");
            scanf("%d", &num1);
            printf("Ingrese el 2do numero: ");
            scanf("%d", &num2);
            resultado = num1 * num2;
            printf("El producto entre %d y %d es: %d\n", num1, num2, resultado);
            break;
        }
    } else {
        printf("La operacion ingresada no es valida\n");
    }
    return 0;
}
