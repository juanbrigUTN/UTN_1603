Algoritmo TP_N5_EJ1
	Definir i, cant, cuan Como Entero
	Definir num Como Real
	Definir neg Como Logico
	neg <- Falso
	
	Escribir "Ingrese la cantidad de n�meros aleatorios que deasea generar: "
	Leer cant
	Para i <- 1 Hasta cant Con Paso 1 Hacer
		num <- Aleatorio(-100, 100)
		Si num < 0 Entonces
			neg <- Verdadero
			Escribir Sin Saltar num, ", "
			cuan <- cuan + 1
		FinSi
	FinPara
	Escribir ""
	Si neg Entonces
		Escribir "Hubo ", cuan, " n�meros negativos"
	SiNo
		Escribir "No hubo n�meros negativos"
	FinSi
FinAlgoritmo
