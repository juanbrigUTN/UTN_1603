#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <time.h>
#define p printf
#define s scanf

int main(void)
{
    setlocale(LC_ALL, "spanish");
    int i, num = 0, max, acu = 0, pos, cont, cant = 1, flag1 = 1, flag2, suma = 0;
    srand(time(NULL));
    do
    {
        p("Ingrese la cantidad de lotes: ");
        s("%d",&cont);
        if (cont<=0)
            p("Por favor, ingrese un número de lotes válido...\n\n");
    }
    while (cont<=0);

    for (int j=1 ; j<= cont ; j++)
    {
        flag2 = 1;
        if (flag1 == 1)
        {
            p("Ingrese la cantidad de números por lote: ");
            s("%d",&cant);
            p("\n\n\n");
            flag1 = 0;
        }
        for (i=1 ; i <= cant ; i++)
        {
            if (flag2 == 1)
            {
                acu = 0;
                flag2 = 0;
            }
            num = (rand()%(100))+1;
            acu += num;
            p("%d\n",num);
            if(i==1)
            {
                max=num;
                pos=i;
            }
            else if(num>max)
            {
                max=num;
                pos=i;
            }
        }
        p("--- Lote nro %d ---", j);
        p("\nSuma de valores: %d", acu);
        p("\nMáximo valor: %d (posición %d)\n\n\n", max, pos);

        suma += acu;
    }
    p("\n=============================\n");
    p("\nSuma total de todos los lotes: %d", suma);

    return(0);
}
