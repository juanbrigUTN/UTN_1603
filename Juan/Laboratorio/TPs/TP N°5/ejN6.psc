Algoritmo ejN6
<<<<<<< HEAD
	Definir i, cantidad, positivos, flag Como Entero
=======
	Definir cantidad, positivos, flag Como Entero
>>>>>>> 29405dd9320721546041a64e9094d48d0efaf0d1
	Definir num, primero, suma, producto Como Real
	
	flag <- 0
	suma <- 0
	producto <- 1
<<<<<<< HEAD
	positivos <- 0
=======
>>>>>>> 29405dd9320721546041a64e9094d48d0efaf0d1
	
	Escribir "Ingrese la cantidad de números que quiere analizar: "
	Leer cantidad
	
<<<<<<< HEAD
	Para i <- 0 Hasta cantidad - 1 Con Paso 1 Hacer
		Escribir "Ingrese el ", i + 1, "° número"
		Leer num
		
		Si (flag = 0) Entonces
			primero <- num
			flag <- 1
		FinSi
		
		Si (num>0) Entonces
			positivos <- positivos + 1
		FinSi
		
		suma <- suma + num
		producto <- producto * num
=======
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
>>>>>>> 29405dd9320721546041a64e9094d48d0efaf0d1
		
	FinPara
	
	Escribir "Fueron ingresados ", positivos, " números positivos"
	Escribir "El 1er valor ingresado fue: ", primero
	Escribir "La sumatoria de todos los números es: ", suma
	Escribir "El producto de todos los números es: ", producto
	
FinAlgoritmo
