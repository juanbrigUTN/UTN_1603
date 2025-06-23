Algoritmo ejemMientras
	
	Definir num, acu, prom Como Real
	Definir cont Como Entero
	
	prom <- 0
	acu <- 0
	cont <- 0
	
	Escribir "Ingrese un n?mero: "
	Leer num
	
	Mientras num <> 0 Hacer
		cont <- cont +1
		acu <- acu + num
		Escribir "Ingrese un n?mero: "
		Leer num
	Fin Mientras
	
	Si cont<>0 Entonces
		prom <- acu/cont
		Escribir "El promedio es: ", prom
	SiNo
		Escribir "No se ingres? ning?n n?mero v?lido."
	FinSi
	
FinAlgoritmo