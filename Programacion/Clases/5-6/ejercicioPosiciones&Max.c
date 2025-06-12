#include <stdio.h>
#include <locale.h>
#include <time.h>
#define p printf
#define s scanf

int main(void)
{
    setlocale(LC_ALL, "spanish");
    int i, num, max, acu, pos, cont, cant, flag=1;
    srand(time(NULL));

    p("Ingrese la cantidad de lotes: ");
    s("\n%d",&cont);

    for (int j=1 ; j<=cont ; j++)
    {
        for (i=1 ; i <= cant ; i++)
        {
            acu = 0;
            if (flag == 1)
            {
                p("Ingrese la cantidad de números por lote");
                s("%d",&cant);
                flag = 0;
            }
            num =(rand()%(100))+1;//Iniciar semilla
            acu+=num;
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
        p("\nLa suma de todos los valores es: %d", acu);
        p("\nEl valor máximo ingresado fue: %d", max);
        p("\nLa posicición del valor max es: %d", pos);
    }
    return(0);
}
//    int num, num1;
//    num=rand()%(10);
//    num1=rand() % 10;
//    p("%d este es num",num);
//    p("%d este es 1",num1);
