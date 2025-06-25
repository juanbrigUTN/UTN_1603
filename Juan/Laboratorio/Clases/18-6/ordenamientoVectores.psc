Algoritmo ordenamientoVectores
	
	Definir vector, aux, long, max Como Entero
	long <- 5
	Dimension vector[long]
	Dimension aux[long]
	// Cargamos vector original:
	Para i<-0 Hasta long-1 Con Paso 1 Hacer
		vector[i] <- Azar(8)
	Fin Para
	// Hacemos una copia del vector original:
	Para i<-0 Hasta long-1 Con Paso 1 Hacer
		aux[i] <- vector[i]
	Fin Para
	// Mostramos vectores:
	Para i<-0 Hasta long-1 Con Paso 1 Hacer
<<<<<<< HEAD
		Escribir Sin Saltar vector[i], " "
	Fin Para
	Escribir ""
	Para i<-0 Hasta long-1 Con Paso 1 Hacer
		Escribir Sin Saltar aux[i], " "
=======
		Escribir Sin Saltar vector[i] " "
	Fin Para
	Escribir ""
	Para i<-0 Hasta long-1 Con Paso 1 Hacer
		Escribir Sin Saltar aux[i] " "
>>>>>>> 29405dd9320721546041a64e9094d48d0efaf0d1
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
<<<<<<< HEAD
		Escribir Sin Saltar aux[i], " "
=======
		Escribir Sin Saltar aux[i] " "
>>>>>>> 29405dd9320721546041a64e9094d48d0efaf0d1
	Fin Para
	// Mostramos posici?n(es) del mayor:
	Escribir ""
	Para i<-0 Hasta long-1 Con Paso 1 Hacer
		Si aux[long-1] = vector[i] Entonces
			Escribir "La posici?n con mayor valor ingresado es: ", i
		Fin Si
	Fin Para
	
	
FinAlgoritmo




