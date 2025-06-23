Algoritmo ejemVector
	
	Definir i, j, vector, aux, long, max, numAle, num, flag Como Entero
	long <- 5
	
	Dimension vector[long]
	Dimension aux[long]
	Dimension numAle[8]
	
	// Inicializo el vector de n?meros con 0
	Para i <- 0 Hasta 8-1 Con Paso 1 Hacer
		numAle[i] <- 0 // Inicializo el vector de n?meros con 0
	Fin Para
	
	// Cargamos vector original:
	Para i<-0 Hasta long-1 Con Paso 1 Hacer
		flag <- 1
		Repetir
			num <- Azar[8]
			Si numAle[num] = 0 Entonces
				numAle[num] <- 1
				flag <- 0
			Fin Si
		Hasta Que flag = 0
		
		vector[i] <- num
	Fin Para
	
	// Hacemos una copia del vector original:
	Para i<-0 Hasta long-1 Con Paso 1 Hacer
		aux[i] <- vector[i]
	Fin Para
	// Mostramos vectores:
	Para i<-0 Hasta long-1 Con Paso 1 Hacer
		Escribir Sin Saltar vector[i], " "
	Fin Para
	Escribir ""
	Para i<-0 Hasta long-1 Con Paso 1 Hacer
		Escribir Sin Saltar aux[i], " "
	Fin Para
	
	// Ordenamos el vector auxiliar sin datos repetidos:
	Para i<-0 Hasta long-1 Con Paso 1 Hacer
		Para j<-0 Hasta long-2 Con Paso 1 Hacer
			Si aux[j]>aux[j+1] Entonces
				max <- aux[j]
				aux[j] <- aux[j+1]
				aux[j+1] <- max
			Fin Si
		Fin Para
	Fin Para
	// Mostramos vector aux ordenado:
	Escribir ""
	Para i<-0 Hasta long-1 Con Paso 1 Hacer
		Escribir Sin Saltar aux[i], " "
	Fin Para
	// Mostramos posici?n(es) del mayor:
	Escribir ""
	Para i<-0 Hasta long-1 Con Paso 1 Hacer
		Si aux[long-1] = vector[i] Entonces
			Escribir "La posici?n con mayor valor ingresado es: ", i
		Fin Si
	Fin Para
	
	
FinAlgoritmo




