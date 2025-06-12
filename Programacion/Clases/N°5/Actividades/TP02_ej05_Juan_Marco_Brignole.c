#include <stdio.h>

int main () {
    float num1, num2, num3;

    printf("Ingrese el primer numero: ");
    scanf("%f", &num1);

    printf("Ingrese el segundo numero: ");
    scanf("%f", &num2);

    printf("Ingrese el tercer numero: ");
    scanf("%f", &num3);

    if (num1 == num2 && num1 == num3) {
        printf("Los numeros son iguales\n");
    } else {
        if (num1 <= num2 && num1 <= num3) {
            printf("El numero mas chico es: %.2f\n", num1);
        } else if (num2 <= num1 && num2 <= num3) {
            printf("El numero mas chico es: %.2f\n", num2);
        } else {
            printf("El numero mas chico es: %.2f\n", num3);
        }
    }

    return 0;
}
