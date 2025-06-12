#include <math.h>
#include <stdio.h>
#define p printf
#define s scanf

int main (){
    float num1, num2,suma,resta,producto,division;
    p ("Ingrese el numero a operar");
    s ("%f",&num1);
    p ("Ingrese el numero con el cual va a operar");
    s ("%f",&num2);

    suma = num1+num2;
    resta = num1-num2;
    producto = num1*num2;

    p ("La suma de %.2f y %.2f es: %.2f",num1,num2,suma);
    p ("\nLa resta de %.2f y %.2f es: %.2f",num1,num2,resta);
    p ("\nEl producto de %.2f por %.2f es: %.2f",num1,num2,producto);
    if (num2 == 0){
        p ("\nLa division no esta definida");
        }
        else {
            division = num1/num2;
                p ("\nLa division de %.2f por %.2f es: %.2f",num1,num2,division);
        };
    return 0;
}
