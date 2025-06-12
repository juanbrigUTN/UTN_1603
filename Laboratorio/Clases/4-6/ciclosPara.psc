Algoritmo ciclos
	Definir num, acu, prom Como Real
	acu <- 0
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		Escribir Sin Saltar "Ingrese el ", i, "° número: "
		Leer num
		acu <- num + acu
	FinPara
	prom <- acu/10
	Escribir "El promedio de los 10 números ingresados es: ", prom
FinAlgoritmo