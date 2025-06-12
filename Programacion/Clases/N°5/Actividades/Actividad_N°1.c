#include <stdio.h>

int main() {
    int num1, m, c, d, u;

    printf("Ingrese el numero de 4 digitos: ");
    scanf("%d", &num1);

    if (num1 <= 9999 && num1 >= 1000) {
        m = num1 / 1000;
        c = (num1 / 100) % 10;
        d = (num1 / 10) % 10;
        u = num1 % 10;

        if (m == u && c == d) {
            printf("El numero ingresado es capicua\n");
        } else {
            printf("El numero ingresado no es capicua\n");
        }
    } else {
        printf("El numero ingresado no es valido\n");
    }

    return 0;
}
