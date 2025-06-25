Algoritmo ordenamientoVectoresSinRepetidos
	
	Definir vector, aux, long, max, repetido Como Entero
	long <- 5
	Dimension vector[long]
	Dimension aux[long]
	
	// Cargamos vector original SIN REPETIDOS:
	Para i <- 0 Hasta long - 1 Con Paso 1 Hacer
		Repetir
			repetido <- 0
			vector[i] <- Azar(8)
			// Verificamos si ya existe ese valor
			Para j <- 0 Hasta i - 1 Con Paso 1 Hacer
				Si vector[i] = vector[j] Entonces
					repetido <- 1
				FinSi
			FinPara
		Hasta Que repetido = 0
	FinPara
	
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
	
	// Ordenamos el vector auxiliar:
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
	
	// Mostramos posición(es) del mayor:
	Escribir ""
	Para i<-0 Hasta long-1 Con Paso 1 Hacer
		Si aux[long-1] = vector[i] Entonces
			Escribir "La posición con mayor valor ingresado es: ", i
		Fin Si
	Fin Para
	
FinAlgoritmo
