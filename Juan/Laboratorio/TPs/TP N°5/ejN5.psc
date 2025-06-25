Algoritmo ejN5
	Definir limite Como Entero
	Definir num, acu, prom Como Real
	acu <- 0
	
	Escribir "Ingrese la cantidad de números que quiere realizar su promedio"
	Leer limite
	
	Para i <- 1 Hasta limite Con Paso 1 Hacer
		Escribir "Ingrese el " , i, "° número: "
		Leer num
	acu <- num + acu
	Fin Para

	prom <- acu / limite
	Escribir "Ingresaste los " ,limite, " números y su promedio es:" ,prom
	
FinAlgoritmo