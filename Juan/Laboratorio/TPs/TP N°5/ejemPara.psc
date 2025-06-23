Algoritmo ejemPara
	
	Definir num, acu, prom Como Real
	Definir limite Como Entero
	
	prom <- 0
	acu <- 0
	limite <- 5
	
	Para i<-1 Hasta limite Con Paso 1 Hacer
		Escribir "Ingrese un n?mero: "
		Leer num
		acu <- acu + num
	Fin Para
	
	prom <- acu/limite
	
	Escribir "El promedio es: ", prom
	
FinAlgoritmo