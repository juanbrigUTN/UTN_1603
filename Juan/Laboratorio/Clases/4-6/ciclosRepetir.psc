Algoritmo ciclosRepetir
	Definir num, acu, prom Como Real
	Definir i Como Entero
	acu <- 0
	i <- 1
	Repetir
		Escribir Sin Saltar "Ingrese el ", i, "� n�mero: "
		Leer num
		acu <- num + acu
		i <- i + 1
	Hasta Que i > 10
	prom <- acu/10
	Escribir "El promedio de los 10 n�meros ingresados es: ", prom
FinAlgoritmo
