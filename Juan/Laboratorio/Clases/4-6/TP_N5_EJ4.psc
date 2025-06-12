Algoritmo TP_N5_EJ4
	Definir cant, ent, flag Como Entero
	Definir rea, min, max Como Real
	Definir i Como Entero
	i <- 1
	Escribir "Ingrese cuantos números enteros quiere ingresar"
	Leer cant
	Mientras i <= cant
		Escribir "Ingrese el ", i, "° número"
		Leer ent
		Si flag = 0 Entonces
			max <- ent
			min <- ent
			flag <- 1
		FinSi
		Si ent < min Entonces
			min <- ent
		FinSi
		Si ent > max Entonces
			max <- ent
		FinSi
		i <- i + 1
	FinMientras
	
	i <- 1
	Escribir "Ingrese cuantos números reales quiere ingresar"
	Leer cant
	Mientras i <= cant
		Escribir "Ingrese el ", i, "° número"
		Leer ent
		Si ent < min Entonces
			min <- ent
		FinSi
		Si ent > max Entonces
			max <- ent
		FinSi
		i <- i + 1
	FinMientras
	Si min <> 0 Entonces
		Escribir "El valor min ingresado es: ", min
	FinSi
	Si max <> 0 Entonces
		Escribir "El valor max ingresado es: ", max
	FinSi
FinAlgoritmo