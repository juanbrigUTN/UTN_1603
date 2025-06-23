Algoritmo ej_Azar
	
	Definir cant, num Como Entero
	
	Escribir Sin Saltar "Ingrese cantidad de n?meros aleatorios que desea generar: "
	Leer cant
	Para i <- 1 Hasta cant Con Paso 1 Hacer
		num <- Azar(6)+1
		Escribir i, "? dado:  ", num
	Fin Para
	
FinAlgoritmo