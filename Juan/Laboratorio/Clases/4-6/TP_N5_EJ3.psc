Algoritmo TP_N5_EJ3
	Definir num, acu, prom Como Real
	Definir i Como Entero
	acu <- 0
	Para i <- 1 Hasta 20 Con Paso 1 Hacer
		Escribir Sin Saltar "Ingrese el ", i, "� n�mero: "
		Leer num
		acu <- num + acu
	FinPara
	prom <- acu/10
	Escribir "El promedio de los 10 n�meros ingresados es: ", prom
FinAlgoritmo
