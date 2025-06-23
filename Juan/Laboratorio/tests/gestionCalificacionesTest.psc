Algoritmo gestionCalificaciones
	Definir j, i, notaEstudiantes, cantidadEstudiantes, flag, flagNota, long, valorNotas, auxNotas Como Entero
	Definir nombreEstudiantes, auxNombres, temp Como Caracter
	
	valorNotas <- 2
	flag <- 0
	flagNota <- 0
	Repetir
		Si flag = 1 Entonces
			Escribir "Ingrese un número de estudiantes válido"
		FinSi
		Escribir "Ingrese la cantidad de alumnos del curso"
		Leer cantidadEstudiantes
		flag <- 1
	Hasta Que cantidadEstudiantes > 0
	Escribir ""
	
	Dimension notaEstudiantes[cantidadEstudiantes, 2]
	Dimension auxNotas[cantidadEstudiantes, valorNotas]
	Dimension nombreEstudiantes[cantidadEstudiantes]
	Dimension auxNombres[cantidadEstudiantes]
	
	
	
	Para i <- 0 Hasta cantidadEstudiantes - 1 Con Paso 1 Hacer
		Escribir "Ingrese el nombre del ", i+1, " estudiante"
		Leer nombreEstudiantes[i]
	FinPara
	
	Para i <- 0 Hasta cantidadEstudiantes-1 Con Paso 1 Hacer
		auxNombres[i] <- nombreEstudiantes[i]
	Fin Para
	
	Para i <- 0 Hasta cantidadEstudiantes - 1 Con Paso 1 Hacer
        Para j <- 0 Hasta cantidadEstudiantes - 2 Con Paso 1 Hacer
            Si auxNombres[j] > auxNombres[j+1] Entonces
                temp <- auxNombres[j]
                auxNombres[j] <- auxNombres[j+1]
                auxNombres[j+1] <- temp
            FinSi
        FinPara
    FinPara
	
	Para i <- 0 Hasta cantidadEstudiantes - 1 Con Paso 1 Hacer
		Escribir auxNombres[i]
	FinPara
	
	Para i <- 0 Hasta cantidadEstudiantes - 1 Con Paso 1 Hacer
		Repetir
			Escribir ""
			Escribir "Por favor, ingrese una nota entre 1 y 10"
			Escribir ""
			
			Escribir "Ingresar la nota final de ", nombreEstudiantes[i]
			Leer notaEstudiantes[i, 0]
		Hasta Que notaEstudiantes[i, 0] >= 1 y notaEstudiantes[i, 0] <= 10
	FinPara
	Escribir ""
	Para i <- 0 Hasta cantidadEstudiantes -1 Con Paso 1 Hacer
		Escribir ""
		Escribir "La nota de: ", nombreEstudiantes[i]
		Escribir "Fue: ", notaEstudiantes[i, 0]
		Escribir ""
	FinPara
	
	
FinAlgoritmo
