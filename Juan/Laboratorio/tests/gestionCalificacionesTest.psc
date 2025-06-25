<<<<<<< HEAD
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
	
=======
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
>>>>>>> 29405dd9320721546041a64e9094d48d0efaf0d1
