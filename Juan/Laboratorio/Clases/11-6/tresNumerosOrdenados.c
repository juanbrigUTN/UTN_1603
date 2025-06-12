#include <stdio.h>

int main() {
    float num1, num2, num3, temp;

    printf("Ingrese el 1er número: ");
    scanf("%f", &num1);
    printf("Ingrese el 2do número: ");
    scanf("%f", &num2);
    printf("Ingrese el 3er número: ");
    scanf("%f", &num3);

    if (num1 < num2) {
        temp = num1;
        num1 = num2;
        num2 = temp;
    }
    if (num1 < num3) {
        temp = num1;
        num1 = num3;
        num3 = temp;
    }
    if (num2 < num3) {
        temp = num2;
        num2 = num3;
        num3 = temp;
    }
    printf("Ordenados de mayor a menor: %.2f - %.2f - %.2f\n", num1, num2, num3);

    return 0;
}
