#include <stdio.h>
#include <locale.h>
#define p printf
#define s scanf

int main(void)
{
    setlocale(LC_ALL, "spanish");
    int interruptor1 = 0, interruptor2 = 0, interruptor3 = 0, op, flag = 0, flag1 = 0, flag2 = 0, flag3 = 0;

    do
    {
        if (flag == 0)
        {
            p("\nLos 3 interruptores se encuentran apagados");
            flag = 1;
        }
        p("\n\n-->Menu de lamparas<--");
        p("\nIngrese 1 para modificar el estado del primer interruptor");
        p("\nIngrese 2 para modificar el estado del segundo interruptor");
        p("\nIngrese 3 para modificar el estado del tercer interruptor");
        p("\nIngrese 0 para salir del menú\n");
        s("%d",&op);


        switch (op)
        {
        case 1:
        {
            if (flag1 == 0)
            {
                p("\nIngrese 1 para encender el interruptor o 0 para dejarlo apagado\n");
                s("%d",&interruptor1);
            }
            if (flag1 == 1)
            {
                p("\nIngrese 1 para dejar encendido el interruptor o 0 para apagarlo\n");
                s("%d",&interruptor1);
            }
            switch (interruptor1)
            {
            case 1:
            {
                p("El interruptor nro 1 ahora esta encendido!\n");
                interruptor1 = 1;
                if(flag1 == 0 )
                    flag1 = 1;
                break;
            }
            case 0:
            {
                p("El interruptor nro 1 ahora esta apagado!\n");
                interruptor1 = 0;
                if(flag1 == 0)
                    flag1 = 0;
                break;
            }
            default :
                p("Por favor, ingrese un valor válido");
                break;
            }
            if (flag==0)
                flag=1;
            break;
        }
        case 2:
        {
            if (flag2 == 0)
            {
                p("\nIngrese 1 para encender el interruptor o 0 para dejarlo apagado\n");
                s("%d",&interruptor2);
            }
            if (flag2 == 1)
            {
                p("\nIngrese 1 para dejar encendido el interruptor o 0 para apagarlo\n");
                s("%d",&interruptor2);
            }
            switch (interruptor2)
            {
            case 1:
            {
                p("El interruptor nro 2 ahora esta encendido!\n");
                interruptor2 = 1;
                if(flag2 == 0 )
                    flag2 = 1;
                break;
            }
            case 0:
            {
                p("El interruptor nro 2 ahora esta apagado\n!\n");
                interruptor2 = 0;
                if(flag2 == 0 )
                    flag2 = 1;
                break;
            }
            default :
                p("Por favor, ingrese un valor válido");
                break;
            }
            if (flag==0)
                flag=1;
            break;
        }
        case 3:
        {
            if (flag3 == 0)
            {
                p("\nIngrese 1 para encender el interruptor o 0 para dejarlo apagado\n");
                s("%d",&interruptor3);
            }
            if (flag3 == 1)
            {
                p("\nIngrese 1 para dejar encendido el interruptor o 0 para apagarlo\n");
                s("%d",&interruptor3);
            }
            switch (interruptor3)
            {
            case 1:
            {
                p("El interruptor nro 3 ahora esta encendido!\n");
                interruptor3 = 1;
                if(flag3 == 0 )
                    flag3 = 1;
                break;
            }
            case 0:
            {
                p("El interruptor nro 3 ahora esta apagado!\n");
                interruptor3 = 0;
                if(flag3 == 0 )
                    flag3 = 1;
                break;
            }
            default :
                p("Por favor, ingrese un valor válido");
                break;
            }
            if (flag==0)
                flag=1;
            break;
        }
        case 0:
        {
            p("\nSaliendo del programa. . .");
            flag=0;
            break;
        }
        }
        if (flag==1){

        if (interruptor1 == 1 && interruptor2 == 1 && interruptor3 == 1)
        {
            p("\nLa lampara \"A\" se encuentra apagada");
            p("\nLa lampara \"B\" se encuentra apagada");
        }
        else if ((interruptor1 == 1 && interruptor2 == 1 && interruptor3 == 0) ||
                 (interruptor1 == 1 && interruptor2 == 0 && interruptor3 == 1) ||
                 (interruptor1 == 0 && interruptor2 == 1 && interruptor3 == 1))
        {
            p("\nLa lampara \"A\" se encuentra apagada");
            p("\nLa lampara \"B\" se encuentra encendida");
        }
        else if ((interruptor1 == 1 && interruptor2 == 0 && interruptor3 == 0) ||
                 (interruptor1 == 0 && interruptor2 == 1 && interruptor3 == 0) ||
                 (interruptor1 == 0 && interruptor2 == 0 && interruptor3 == 1))
        {
            p("\nAmbas lamparas se encuentran encendidas");
        }
        else
        {
            p("\nLa lampara \"A\" se encuentra encendida");
            p("\nLa lampara \"B\" se encuentra apagada");
        }
       }
    }
    while (op != 0);

    return(0);
}
