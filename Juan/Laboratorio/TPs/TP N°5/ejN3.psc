Algoritmo ejN3
	Definir limite Como Entero
	Definir num, acu, prom Como Real
	limite <- 20
	acu <- 0
	
 //C�digo para ingresar n�meros a gusto:
//	Escribir "Ingrese la cantidad de n�meros que quiere realizar su promedio"
//	Leer limite
//	Para i <- 1 Hasta limite Con Paso 1 Hacer
//		Escribir "Ingrese el " , i, "� n�mero: "
//		Leer num
//		acu <- num + acu
//		
//	Fin Para
	
	Para i <- 1 Hasta limite Con Paso 1 Hacer
		Escribir "Ingrese el " , i, "� n�mero: "
		Leer num
		acu <- num + acu
		
	Fin Para
prom <- acu / limite
Escribir "Ingresaste los " ,limite, " n�meros y su promedio es:" ,prom
	
FinAlgoritmo
