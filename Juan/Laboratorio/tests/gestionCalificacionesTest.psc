Algoritmo  gestorNotasAlumnos
	
	Definir i, j, cantidadDeAlumnos, notasAlumnos, notasOrdenadas, max1, max2, max3, abanderado, escolta1, escolta2, sumaNotas, aprobados, desaprobados, flag, flagNota Como Entero
	Definir nombresAlumnos, nombresOrdenados, temp Como Caracter
	Definir promedio Como Real
	
	flag <- 0
	flagNota <- 0
	sumaNotas <- 0
	aprobados <- 0
	promedio <- 0
	max1 <- 0
	max2 <- 0
	max3 <- 0
	abanderado <- 0
	escolta1 <- 0
	escolta2 <- 0
	
	Repetir
		//Validación de cantidad de estudiantes
		Si flag = 1 Entonces
			Escribir ""
			Escribir "Ingrese un número de estudiantes válido"
			Escribir ""
		FinSi
		Escribir "Ingrese la cantidad de alumnos"
		Leer cantidadDeAlumnos
		flag <- 1
	Hasta Que cantidadDeAlumnos > 0
	
	Dimension notasAlumnos[cantidadDeAlumnos]
	Dimension nombresAlumnos[cantidadDeAlumnos]
	Dimension notasOrdenadas[cantidadDeAlumnos]
	Dimension nombresOrdenados[cantidadDeAlumnos]
	
	Escribir ""
	
	Para i <- 0 Hasta cantidadDeAlumnos - 1 Con Paso 1 Hacer
		Escribir "Ingrese el nombre del ", i + 1, "° alumno"
		Leer nombresAlumnos[i]
	FinPara
	
	Para i <- 0 Hasta cantidadDeAlumnos - 1 Con Paso 1 Hacer
		nombresOrdenados[i] <- nombresAlumnos[i]
	FinPara
	
	Para i <- 0 Hasta cantidadDeAlumnos - 1 Con Paso 1 Hacer
		Para j <- 0 Hasta cantidadDeAlumnos - 2 Con Paso 1 Hacer
			Si nombresOrdenados[j] > nombresOrdenados[j + 1] Entonces
				temp <- nombresOrdenados[j]
				nombresOrdenados[j] <- nombresOrdenados[j + 1]
				nombresOrdenados[j + 1] <- temp
			FinSi
		FinPara
	FinPara
	
	Escribir ""
	
	//Verificación de ordenamiento alfabético
	//Para i <- 0 Hasta cantidadDeAlumnos - 1 Con Paso 1 Hacer
	//	Escribir nombresOrdenados[i]
	//	Escribir ""
	//FinPara
	
	Para i <- 0 Hasta cantidadDeAlumnos - 1 Con Paso 1 Hacer
		Escribir "Ingrese la nota de ", nombresAlumnos[i]
		Leer notasAlumnos[i]
	FinPara
	
//	Escribir "Notas sin orden"
	
//	Para i <- 0 Hasta cantidadDeAlumnos - 1 Con Paso 1 Hacer
//		Escribir notasAlumnos[i]
//		Escribir ""
//	FinPara
	
	Para i <- 0 Hasta cantidadDeAlumnos - 1 Con Paso 1 Hacer
		Para j <- 0 Hasta cantidadDeAlumnos - 1 Con Paso 1 Hacer
			Si nombresOrdenados[i] = nombresAlumnos[j] Entonces
				notasOrdenadas[i] <- notasAlumnos[j]
			FinSi
		FinPara
	FinPara
	
//	Escribir "Notas ordenadas"
	
//	Para i <- 0 Hasta cantidadDeAlumnos - 1 Con Paso 1 Hacer
//		Escribir notasOrdenadas[i]
//		Escribir ""
//	FinPara
	
	//Verificación de orden de notas
	Para i <- 0 Hasta cantidadDeAlumnos - 1 Con Paso 1 Hacer
		Escribir "La nota final de: ", nombresOrdenados[i], " es -> ", notasOrdenadas[i]
	FinPara
	
	Escribir ""
	Escribir ""
	
	Para i <- 0 Hasta cantidadDeAlumnos - 1 Con Paso 1 Hacer
		Para j <- 0 Hasta cantidadDeAlumnos - 2 Con Paso 1 Hacer
			Si nombresOrdenados[i] = nombresAlumnos[j] Entonces
				Escribir "La nota final de: ", nombresOrdenados[i]
				Escribir "Fue: ", notasAlumnos[j]
				Escribir ""
			FinSi
		FinPara
	FinPara
	
	Para i <- 0 Hasta cantidadDeAlumnos - 1 Con Paso 1 Hacer
		sumaNotas <- notasAlumnos[i] + sumaNotas
	FinPara
	
	promedio <- sumaNotas/cantidadDeAlumnos
	
	Para i <- 0 Hasta cantidadDeAlumnos - 1 Con Paso 1 Hacer
		Si notasAlumnos[i] >= 6 Entonces
			aprobados <- aprobados + 1
		FinSi
	FinPara
	
	desaprobados <- cantidadDeAlumnos - aprobados
	
	Escribir ""
	Escribir ""
	Escribir ""
	
	Escribir "El promedio general del curso fue de: ", promedio
	Escribir "La cantidad de alumnos que aprobaron fue de: ", aprobados
	Escribir "La cantidad de alumnos que desaprobaron fue de: ", desaprobados
	
	Escribir ""
	
	Si aprobados < 3 Entonces
		Escribir "La cantidad de alumnos no es suficiente para designar abanderado y escoltas"
	SiNo
		Para i <- 0 Hasta cantidadDeAlumnos - 1 Con Paso 1 Hacer
			Si notasOrdenadas[i] > max1 Entonces
				max3 <- max2
				escolta2 <- escolta1
				max2 <- max1
				escolta1 <- abanderado
				max1 <- notasOrdenadas[i]
				abanderado <- i
			Sino
				Si notasOrdenadas[i] > max2 Entonces
					max3 <- max2
					escolta2 <- escolta1
					max2 <- notasOrdenadas[i]
					escolta1 <- i
				Sino
					Si notasOrdenadas[i] > max3 Entonces
						max3 <- notasOrdenadas[i]
						escolta2 <- i
					FinSi
				FinSi
			FinSi
		FinPara
	FinSi
	
	Escribir ""
	Escribir "Abanderado: ", nombresOrdenados[abanderado], " con nota: ", notasOrdenadas[abanderado]
	Escribir ""
	Escribir "Escoltas: "
	Escribir "- ", nombresOrdenados[escolta1], " con nota: ", notasOrdenadas[escolta1]
	Escribir "- ", nombresOrdenados[escolta2], " con nota: ", notasOrdenadas[escolta2]
	
FinAlgoritmo
	