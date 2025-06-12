Algoritmo ciclosEjercicioCuatro
	Definir i, flag Como Entero
	Definir min, max, num Como Real
	Definir opcion2 Como Caracter
	i <- 1
	flag <- 0
	Repetir
		Escribir "---> Menu <---"
		Escribir "(s). Para ingresar un valor"
		Escribir "(n). Para salir del programa"
		Leer op
		Segun op Hacer
			's','S':
				Escribir "Ingrese el: ", i, "° valor"
				Leer num
				Si flag = 0 Entonces
					max <- num
					min <- num
					flag <- 1
				FinSi
				Si num < min Entonces
					min <- num
				FinSi
				Si num > max Entonces
					max <- num
				FinSi
				i <- i + 1
			'n','N':
				Si max <> 0 Entonces
					Escribir "El valor max es: ", max
				FinSi
				Si min <> 0 Entonces
					Escribir "El valor min es: ", min
				FinSi
				Escribir "Saliendo del programa..."
				op <- n
			De Otro Modo:
				Escribir "El valor ingresado no es válido..."
		FinSegun
	Hasta Que op = n
FinAlgoritmo