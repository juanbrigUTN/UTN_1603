Algoritmo TP_N5_EJ4
	Definir cant, ent, flag Como Entero
	Definir rea, min, max Como Real
	Definir i Como Entero
	i <- 1
	Escribir "Ingrese un número entero"
	Leer ent
	min <- ent
	
	Escribir "Ingrese cuantos números reales quiere ingresar"
	Leer cant
	Mientras i <= cant
		Escribir "Ingrese el ", i, "° número real"
		Leer rea
		Si rea < min Entonces
			min <- ent
		FinSi
	FinMientras
	Si min <> 0 Entonces
		Escribir "El valor min ingresado es: ", min
	FinSi
FinAlgoritmo