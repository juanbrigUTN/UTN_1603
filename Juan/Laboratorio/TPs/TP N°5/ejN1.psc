Algoritmo ejN1
	Definir limite Como Entero
	Definir num, acu Como Real
	limite <- 20
	acu <- 0
	
 //Código para ingresar números a gusto:
//	Escribir "Ingrese la cantidad de números que quiere válidar su negatividad"
//	Leer limite
//	Para i <- 1 Hasta limite Con Paso 1 Hacer
//		Escribir "Ingrese el " , i, "° número: "
//		Leer num
//		
//		Si (num < 0) Entonces
//			Escribir "El ", num, " es negativo!"
//			acu <- acu + 1
//		FinSi
//		
//	Fin Para
	
	Para i <- 1 Hasta limite Con Paso 1 Hacer
		Escribir "Ingrese el " , i, "° número: "
		Leer num
		
		Si (num < 0) Entonces
			Escribir "El ", num, " es negativo!"
			acu <- acu + 1
		FinSi
		
	Fin Para

Escribir "Ingresaste los " ,limite, " números y ", acu, " de ellos fueron negativos!"
	
FinAlgoritmo
