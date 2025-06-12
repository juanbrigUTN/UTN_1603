#include <stdio.h>
#include <time.h>

int main (void)
{
    int i, j, num, flag=1, lon, temp, pos;
    char op;
    srand(time(NULL));

    printf("Ingrese la longitud del array");
    scanf("%d",&lon);

    int *array = malloc(lon * sizeof(int));

    for (i = 0; i < lon; i++)
    {
        array[i] =(rand()%(100))+1;
    }


    return (0);
};

