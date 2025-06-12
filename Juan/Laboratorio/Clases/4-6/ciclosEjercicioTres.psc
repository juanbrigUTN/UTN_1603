Algoritmo ciclosEjercicioTres
	Definir n, acu Como Entero
	Escribir Sin Saltar "Ingrese un valor: "
	Leer n
	Escribir "La tabla de ", n, " hasta el 10 es:"
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		acu <- 0
		acu <- i * n
		Escribir n," X ", i, " = ", acu
	FinPara
FinAlgoritmo
