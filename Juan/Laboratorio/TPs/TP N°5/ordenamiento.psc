Algoritmo ordenamiento
	
	Definir num1, num2, num3 Como Entero
	
	Escribir Sin Saltar "Ingrese 1er n?mero: "
	Leer num1
	Escribir Sin Saltar "Ingrese 2do n?mero: "
	Leer num2
	Escribir Sin Saltar "Ingrese 3er n?mero: "
	Leer num3
	Si num1 >= num2 Y num1 >= num3 Entonces
		Si num2 >= num3 Entonces
			Escribir "Ordenados: ", num1, " - ", num2, " - ", num3
		SiNo
			Escribir "Ordenados: ", num1, " - ", num3, " - ", num2
		Fin Si
	SiNo
		Si num2 >= num1 Y num2 >= num3 Entonces
			Si num1 >= num3 Entonces
				Escribir "Ordenados: ", num2, " - ", num1, " - ", num3
			SiNo
				Escribir "Ordenados: ", num2, " - ", num3, " - ", num1
			Fin Si
		SiNo
			Si num3 >= num1 Y num3 >= num2 Entonces
				Si num1 >= num2 Entonces
					Escribir "Ordenados: ", num3, " - ", num1, " - ", num2
				SiNo
					Escribir "Ordenados: ", num3, " - ", num2, " - ", num1
				Fin Si
			Fin Si
		Fin Si
	Fin Si
	
FinAlgoritmo