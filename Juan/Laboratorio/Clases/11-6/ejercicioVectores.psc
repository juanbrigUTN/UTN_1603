Algoritmo ejercicioVectores
	
	Definir flag, array, long, i, j, pos, temp Como Entero
	Definir op Como Caracter
	flag <- 1
	
	Escribir "Ingrese la longitud del array"
	Leer long
	
	Dimension array[long]
	
	Para i <- 0 Hasta long-1 Con Paso 1 Hacer
		array[i]<-Aleatorio(-1000, 1000)
	FinPara
	
	Escribir "Array original: " Sin Saltar
	Para i <- 0 Hasta long - 1 Con Paso 1 Hacer
		Escribir Sin Saltar "[", array[i], "] "
	FinPara
	

	Mientras flag == 1 Hacer
		Escribir ""
		Escribir "Ingrese el tipo de ordenamiento ASC o DESC"
		Leer op
		op <- Mayusculas(op)
		Si (op == 'ASC' O op == 'DESC')
			flag <- 0
		SiNo
			Escribir "Por favor, ingrese una opción válida"
		FinSi
	Fin Mientras
	
	
	Para i <- 0 Hasta long - 1 Con Paso 1 Hacer
		pos <- i;
		// Recorremos desde la siguiente posicion
		// Buscamos el elemento menor (ASC) o mayor (DESC) para intercambiarlo
		Para j<-i+1 Hasta long - 1 Con Paso 1 Hacer
			Si (op == 'ASC' Y array[j] < array[pos]) o (op == 'DESC' Y array[j] > array[pos])  Entonces
				pos <- j;
			FinSi
		FinPara
		// Intercambiamos la variable
		temp <- array[i];
		array[i] <- array[pos];
		array[pos] <- temp;
	FinPara
	
	Escribir "Resultado:";
	Para i<-0 Hasta long - 1 Con Paso 1 Hacer
		Escribir Sin Saltar "[", array[i], "] "
	FinPara
	
FinAlgoritmo
