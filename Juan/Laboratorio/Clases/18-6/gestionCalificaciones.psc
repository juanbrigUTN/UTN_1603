Algoritmo gestionCalificaciones
<<<<<<< HEAD
	Definir j, i, notaEstudiantes, cantidadEstudiantes, flag, flagNota, sumaNotas, aprobados, desaprobados, max1, max2, max3, pos1, pos2, pos3 Como Entero
	Definir promedio Como Real
	Definir nombreEstudiantes, auxNombres, temp Como Caracter
	Definir notasOrdenadas Como Entero
	
	flag <- 0
	flagNota <- 0
	sumaNotas <- 0
	aprobados <- 0
	desaprobados <- 0
	promedio <- 0
	
	Repetir
		//Validaci�n de cantidad de estudiantes
=======
	Definir j, i, notaEstudiantes, cantidadEstudiantes, flag, flagNota, long, valorNotas, auxNotas Como Entero
	Definir nombreEstudiantes, auxNombres, temp Como Caracter
	
	valorNotas <- 2
	long <- 40
	flag <- 0
	flagNota <- 0
	Repetir
>>>>>>> 29405dd9320721546041a64e9094d48d0efaf0d1
		Si flag = 1 Entonces
			Escribir "Ingrese un n�mero de estudiantes v�lido"
		FinSi
		Escribir "Ingrese la cantidad de alumnos del curso"
		Leer cantidadEstudiantes
		flag <- 1
	Hasta Que cantidadEstudiantes > 0
	Escribir ""
	
<<<<<<< HEAD
	Dimension notaEstudiantes[cantidadEstudiantes]
	Dimension notasOrdenadas[cantidadEstudiantes]
	Dimension nombreEstudiantes[cantidadEstudiantes]
	Dimension auxNombres[cantidadEstudiantes]
	
	//Ingresar nombre de estudiantes (sin orden alfabetico)
=======
	Dimension notaEstudiantes[cantidadEstudiantes, 2]
	Dimension auxNotas[cantidadEstudiantes, valorNotas]
	Dimension nombreEstudiantes[cantidadEstudiantes]
	Dimension auxNombres[cantidadEstudiantes]
	
	
	
>>>>>>> 29405dd9320721546041a64e9094d48d0efaf0d1
	Para i <- 0 Hasta cantidadEstudiantes - 1 Con Paso 1 Hacer
		Escribir "Ingrese el nombre del ", i+1, " estudiante"
		Leer nombreEstudiantes[i]
	FinPara
	
<<<<<<< HEAD
	//Creaci�n array auxiliar para nombres de estudiantes
=======
>>>>>>> 29405dd9320721546041a64e9094d48d0efaf0d1
	Para i <- 0 Hasta cantidadEstudiantes-1 Con Paso 1 Hacer
		auxNombres[i] <- nombreEstudiantes[i]
	Fin Para
	
<<<<<<< HEAD
	//Proceso para ordenar alfabeticamente el array de nombres auxiliar
=======
>>>>>>> 29405dd9320721546041a64e9094d48d0efaf0d1
	Para i <- 0 Hasta cantidadEstudiantes - 1 Con Paso 1 Hacer
        Para j <- 0 Hasta cantidadEstudiantes - 2 Con Paso 1 Hacer
            Si auxNombres[j] > auxNombres[j+1] Entonces
                temp <- auxNombres[j]
                auxNombres[j] <- auxNombres[j+1]
                auxNombres[j+1] <- temp
            FinSi
        FinPara
    FinPara
	
<<<<<<< HEAD
	Escribir ""
	
	//Asignaci�n de notas a estudiantes
	Para i <- 0 Hasta cantidadEstudiantes - 1 Con Paso 1 Hacer
		Repetir
			Si flagNota = 1 Entonces
				Escribir ""
				Escribir "Por favor, ingrese una nota entre 1 y 10"
				Escribir ""
			FinSi
			Escribir "Ingresar la nota final de ", nombreEstudiantes[i]
			Leer notaEstudiantes[i]
			flagNota <- 1
		Hasta Que notaEstudiantes[i] >= 1 y notaEstudiantes[i] <= 10
		flagNota <- 0
	FinPara
	
	//Cargar notas en el mismo orden que los nombres ordenados alfab�ticamente
	Para i <- 0 Hasta cantidadEstudiantes - 1 Con Paso 1 Hacer
		Para j <- 0 Hasta cantidadEstudiantes - 1 Con Paso 1 Hacer
			Si auxNombres[i] = nombreEstudiantes[j] Entonces
				notasOrdenadas[i] <- notaEstudiantes[j]
			FinSi
		FinPara
	FinPara
	
	//Mostrar lista de estudiantes con sus notas ordenadas alfab�ticamente
	Escribir ""
	Escribir "Listado de alumnos y sus notas ordenado alfab�ticamente:"
	Para i <- 0 Hasta cantidadEstudiantes - 1 Con Paso 1 Hacer
		Escribir auxNombres[i], " - Nota: ", notasOrdenadas[i]
	FinPara
	
	//Calcular promedio general y cantidad de aprobados
	Para i <- 0 Hasta cantidadEstudiantes - 1 Con Paso 1 Hacer
		sumaNotas <- sumaNotas + notasOrdenadas[i]
		Si notasOrdenadas[i] >= 6 Entonces
			aprobados <- aprobados + 1
		FinSi
	FinPara
	
	desaprobados <- cantidadEstudiantes - aprobados 
	promedio <- sumaNotas / cantidadEstudiantes
	
	Escribir ""
	Escribir "Promedio general del curso: ", promedio
	Escribir "Cantidad de alumnos aprobados: ", aprobados
	Escribir "Cantidad de alumnos desaprobados: ", desaprobados
	
	//Determinar abanderado y escoltas (3 mejores notas)
	Si cantidadEstudiantes < 3 Entonces
		Escribir "No hay suficientes estudiantes para asignar abanderado y escoltas."
	SiNo
		//Inicializamos posiciones y valores m�ximos
		max1 <- 0
		max2 <- 0
		max3 <- 0
		pos1 <- 0
		pos2 <- 0
		pos3 <- 0
		
		Para i <- 0 Hasta cantidadEstudiantes - 1 Con Paso 1 Hacer
			Si notasOrdenadas[i] > max1 Entonces
				//Reacomodamos
				max3 <- max2
				pos3 <- pos2
				max2 <- max1
				pos2 <- pos1
				max1 <- notasOrdenadas[i]
				pos1 <- i
			Sino
				Si notasOrdenadas[i] > max2 Entonces
					max3 <- max2
					pos3 <- pos2
					max2 <- notasOrdenadas[i]
					pos2 <- i
				Sino
					Si notasOrdenadas[i] > max3 Entonces
						max3 <- notasOrdenadas[i]
						pos3 <- i
					FinSi
				FinSi
			FinSi
		FinPara
		
		//Imprimimos abanderados y escoltas
		Escribir ""
		Escribir "Abanderado: ", auxNombres[pos1], " con nota ", notasOrdenadas[pos1]
		Escribir "Escoltas:"
		Escribir "- ", auxNombres[pos2], " con nota ", notasOrdenadas[pos2]
		Escribir "- ", auxNombres[pos3], " con nota ", notasOrdenadas[pos3]
	FinSi
=======
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
	
>>>>>>> 29405dd9320721546041a64e9094d48d0efaf0d1
	
FinAlgoritmo
