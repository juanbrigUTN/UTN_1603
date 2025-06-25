Algoritmo vectorEjemplo
	
	Definir vector, vector2, long Como Entero
	long <- 5
	Dimension vector[long]
	Dimension vector2[long]
	
	// Ingreso de datos por posici?n:
	vector[0] <- 65
	vector[1] <- 87
	vector[2] <- -15
	vector[3] <- 5
	vector[4] <- -99
	// Ingreso de datos por ciclo:
	Para i <- 0 Hasta long-1 Con Paso 1 Hacer
		vector2[i] <- Aleatorio(10, 50)
	Fin Para
	
	// Mostrar conteido de un vector:
	Escribir "Posici?n 2 de vector: ", vector[2]
	Escribir "Posici?n 4 de vector2: ", vector2[4]
	Para i <- 0 Hasta long-1 Con Paso 1 Hacer
		Escribir "Posicici?n ", i, ": ", vector2[i]
	Fin Para
	
FinAlgoritmo