#include <stdio.h>
int main (){
    char linea[5]="Hola";
    printf("%s\n",linea);
    printf("%15s\n",linea);
    printf("%15.2s\n",linea);
    printf("%.2s\n",linea);
    printf("%15s Pepe\n",linea);
};