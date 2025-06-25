Algoritmo invertirPalabra
    Definir palabra, invertida, letra Como Cadena
    Definir i Como Entero
	
    Escribir "Ingrese una palabra:"
    Leer palabra
	
    invertida <- ""
	
    Para i <- Longitud(palabra) - 1 Hasta 0 Con Paso - 1 Hacer
        letra <- Subcadena(palabra, i, i)
        invertida <- invertida + letra
    FinPara
	
    Escribir "La palabra invertida es: ", invertida
FinAlgoritmo
