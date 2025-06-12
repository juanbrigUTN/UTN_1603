Algoritmo ciclosMientras
	Definir num, acu, prom Como Real
	Definir i Como Entero
	acu <- 0
	i <- 1
	Mientras i <= 10 Hacer
		Escribir Sin Saltar "Ingrese el ", i, "° número: "
		Leer num
		acu <- num + acu
		i <- i + 1
	FinMientras
	prom <- acu/10
	Escribir "El promedio de los 10 números ingresados es: ", prom
FinAlgoritmo