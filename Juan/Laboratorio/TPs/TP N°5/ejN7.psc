Algoritmo ejN7
	
	
	Definir i, num, arrayNum, salir, flag, acumulador Como Entero
	Definir promedio Como Real
	
	flag <- 0
	salir <- 0
	acumulador <- 0
	promedio <- 1
	i <- 0
	
	Repetir
		
		Si flag = 0 Entonces
			Escribir "Ingrese valores distintos de cero"
			flag <- 1
		FinSi
		Escribir ""
		Escribir "Ingrese el ", i + 1, "° número"
		Leer num
		Escribir ""
		i <- i + 1
		acumulador <- acumulador + num
		promedio <- acumulador / i
		Escribir "¿Quiere salir del programa?"
		Escribir "Presione 1 para seguir escribiendo números"
		Escribir "Presione 0 para salir del programa"
		Leer salir
		Escribir ""
		Si salir <> 0 Entonces
			Escribir "El promedio hasta ahora es de: ", promedio
		FinSi
		
	Hasta Que salir = 0
	
	Escribir "Usted salio del programa, el promedio final fue de: ", promedio
	
FinAlgoritmo