Algoritmo tresNumeros
	Definir num1, num2, num3 Como Real
	Escribir 'Ingrese el 1er numero'
	Leer num1
	Escribir 'Ingrese el 2do numero'
	Leer num2
	Escribir 'Ingrese el 3er numero'
	Leer num3
	Si num1 >= num2 Y num1 >= num3 Entonces
		Si num2 >= num3 Entonces
			Escribir 'Ordenados de mayor a menor: ', num1, ' - ', num2, ' - ', num3
		SiNo
			Escribir 'Ordenados de mayor a menor: ', num1, ' - ', num3, ' - ', num2
		FinSi
	SiNo
		Si num2 >= num1 Y num2 >= num3 Entonces
			Si num1 >= num3 Entonces
				Escribir 'Ordenados de mayor a menor: ', num2, ' - ', num1, ' - ', num3
			SiNo
				Escribir 'Ordenados de mayor a menor: ', num2, ' - ', num3, ' - ', num1
			FinSi
		SiNo
			Si num3 >= num1 Y num3 >= num2 Entonces
				Si num2 >= num1 Entonces
					Escribir 'Ordenados de mayor a menor: ', num3, ' - ', num2, ' - ', num1
				SiNo
					Escribir 'Ordenados de mayor a menor: ', num3, ' - ', num1, ' - ', num2
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo