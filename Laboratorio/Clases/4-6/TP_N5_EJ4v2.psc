Algoritmo TP_N5_EJ4
	Definir cant, ent, flag Como Entero
	Definir rea, min, max Como Real
	Definir i Como Entero
	i <- 1
	Escribir "Ingrese un n�mero entero"
	Leer ent
	min <- ent
	
	Escribir "Ingrese cuantos n�meros reales quiere ingresar"
	Leer cant
	Mientras i <= cant
		Escribir "Ingrese el ", i, "� n�mero real"
		Leer rea
		Si rea < min Entonces
			min <- ent
		FinSi
	FinMientras
	Si min <> 0 Entonces
		Escribir "El valor min ingresado es: ", min
	FinSi
FinAlgoritmo