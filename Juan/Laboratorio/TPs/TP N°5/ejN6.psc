Algoritmo ejN6
	Definir cantidad, positivos, flag Como Entero
	Definir num, primero, suma, producto Como Real
	
	flag <- 0
	suma <- 0
	producto <- 1
	
	Escribir "Ingrese la cantidad de números que quiere analizar: "
	Leer cantidad
	
	Para i <- 1 Hasta cantidad Con Paso 1 Hacer
		Escribir "Ingrese el ", i, "° número"
		Leer num
		
		Si (flag = 0) Entonces
			primero = num
			flag = 1
		FinSi
		
		Si (num>0) Entonces
			positivos = + 1
		FinSi
		
		suma = suma + num
		producto = producto * num
		
	FinPara
	
	Escribir "Fueron ingresados ", positivos, " números positivos"
	Escribir "El 1er valor ingresado fue: ", primero
	Escribir "La sumatoria de todos los números es: ", suma
	Escribir "El producto de todos los números es: ", producto
	
FinAlgoritmo
