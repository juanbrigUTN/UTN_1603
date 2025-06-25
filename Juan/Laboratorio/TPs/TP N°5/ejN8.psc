Algoritmo ejN8
	
	Definir i, num, max, corte, flag Como Entero
	
	i <- 1
	flag <- 0
	corte <- 0
	max <- 0
	num <- 0
	
	Repetir
		
		Si flag = 0 Entonces
			Escribir "Ingrese números cualesquiera, para salir del programa, ingrese el número -1"
			flag <- 1
		FinSi
		
		Escribir "Ingrese el ", i, "° número"
		Leer num
		
		i <- i + 1
		
		Si num > max Entonces
			max <- num
		FinSi
		
	Hasta Que num = -1
	
	Escribir ""
	
	Si i = 2 Entonces
		Escribir "No se ingresó ningún número"
	SiNo
		Escribir "El valor máximo ingresado fue: ", max
	FinSi
	
	
	
FinAlgoritmo
	