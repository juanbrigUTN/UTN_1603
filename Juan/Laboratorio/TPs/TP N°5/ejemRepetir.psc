Algoritmo ejemRepetir
	
	Definir num, acu, prom Como Real
	Definir cont Como Entero
	
	prom <- 0
	acu <- 0
	cont <- 0
	
	Repetir
		Escribir "Ingrese un n?mero: "
		Leer num
		acu <- acu + num
		cont <- cont + 1
	Hasta Que num = 0
	
	Si cont<>1 Entonces
		prom <- acu/(cont-1)
		Escribir "El promedio es: ", prom
	SiNo
		Escribir "No se ingres? ning?n n?mero v?lido."
	FinSi
	
	
	
FinAlgoritmo