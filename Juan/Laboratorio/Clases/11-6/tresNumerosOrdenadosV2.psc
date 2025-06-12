Algoritmo tresNumerosV2
		Definir num1, num2, num3, temp Como Real
		Escribir "Ingrese el 1er número:"
		Leer num1
		Escribir "Ingrese el 2do número:"
		Leer num2
		Escribir "Ingrese el 3er número:"
		Leer num3
		Si num1 < num2 Entonces
			temp <- num1
			num1 <- num2
			num2 <- temp
		FinSi
		Si num1 < num3 Entonces
			temp <- num1
			num1 <- num3
			num3 <- temp
		FinSi
		Si num2 < num3 Entonces
			temp <- num2
			num2 <- num3
			num3 <- temp
		FinSi
		Escribir "Ordenados de mayor a menor: ", num1, " - ", num2, " - ", num3
FinAlgoritmo