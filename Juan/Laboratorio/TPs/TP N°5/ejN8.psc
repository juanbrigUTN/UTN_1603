Algoritmo ejN8
	
	Definir i, num, max, corte, flag Como Entero
	
	i <- 1
	flag <- 0
	corte <- 0
	max <- 0
	num <- 0
	
	Repetir
		
		Si flag = 0 Entonces
			Escribir "Ingrese n�meros cualesquiera, para salir del programa, ingrese el n�mero -1"
			flag <- 1
		FinSi
		
		Escribir "Ingrese el ", i, "� n�mero"
		Leer num
		
		i <- i + 1
		
		Si num > max Entonces
			max <- num
		FinSi
		
	Hasta Que num = -1
	
	Escribir ""
	
	Si i = 2 Entonces
		Escribir "No se ingres� ning�n n�mero"
	SiNo
		Escribir "El valor m�ximo ingresado fue: ", max
	FinSi
	
	
	
FinAlgoritmo
	