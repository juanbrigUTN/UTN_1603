Algoritmo TP_N5_EJ2
	Definir i , cont Como Entero
	Definir num Como Real
	
	Para i <- 1 Hasta 20 Con Paso 1 Hacer
		Escribir "Ingrese un valor: "
		Leer num
		Si num < 0 Entonces
			cont <- cont + 1
		FinSi
	FinPara
	Si cont <> 0 Entonces
		Si cont = 1 Entonces
			Escribir "Se ingreso:", cont, " número negativo"
		SiNo
			Escribir "Se ingresaron: ", cont, " números negativos"
		FinSi
	SiNo
		Escribir "No se ingresaron valores negativos"
	FinSi
FinAlgoritmo
