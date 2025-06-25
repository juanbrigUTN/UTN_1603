Algoritmo invertirMultiplesPalabras
	Definir cantidad, i, j, flag Como Entero
	Definir palabra, letra, invertida Como Cadena
	Definir palabras, palabrasInvertidas Como Cadena
	
	flag <- 0
	
	// Pedimos la cantidad de palabras
	Repetir
		Si flag = 1 Entonces
		Escribir "Por favor, ingrese un valor mayor a 0"
		FinSi
		Escribir "¿Cuántas palabras desea ingresar?"
		Leer cantidad
		flag <- 1
	Hasta Que cantidad > 0
	
	// Dimensionamos los arreglos
	Dimension palabras[cantidad]
	Dimension palabrasInvertidas[cantidad]
	
	// Ingreso de palabras
	Para i <- 0 Hasta cantidad - 1 Con Paso 1 Hacer
		Escribir "Ingrese la palabra número ", i + 1, ":"
		Leer palabras[i]
	FinPara
	
	// Inversión de palabras
	Para i <- 0 Hasta cantidad - 1 Con Paso 1 Hacer
		invertida <- ""
		
		Para j <- Longitud(palabras[i]) - 1 Hasta 0 Con Paso -1 Hacer
			letra <- Subcadena(palabras[i], j, j)
			invertida <- Concatenar(invertida, letra)
		FinPara
		
		palabrasInvertidas[i] <- invertida
	FinPara
	
	// Mostrar resultados
	Escribir ""
	Escribir "Palabras invertidas:"
	Para i <- 0 Hasta cantidad - 1 Con Paso 1 Hacer
		Escribir palabras[i], " - ", palabrasInvertidas[i]
	FinPara
FinAlgoritmo
