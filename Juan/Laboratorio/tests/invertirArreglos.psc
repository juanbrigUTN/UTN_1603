Algoritmo invertirArreglos
	
	Definir j, i, arrayOrig, arrayInv, long Como Entero
	
	Escribir "Ingrese la longitud del array"
	Leer long
	j <- long - 1 
	
	Dimension arrayInv[long]
	Dimension arrayOrig[long]
	Escribir " "
	Escribir " "
	Escribir "Array original: "
	Para i <- 0 Hasta long - 1 Con Paso 1 Hacer
		arrayOrig[i] <- i
		Escribir Sin Saltar arrayOrig[i], ", "
	FinPara
	Escribir " "
	Escribir " "
	Escribir "Array invertido: "
	Para i <- 0 Hasta long - 1 Con Paso 1 Hacer
		arrayInv[i] <- arrayOrig[j]
		j <- j - 1
		Escribir Sin Saltar arrayInv[i], ", "
	FinPara
	
	
	
FinProceso
