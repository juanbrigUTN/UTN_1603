Algoritmo ejN1
	Definir limite Como Entero
	Definir num, acu Como Real
	limite <- 20
	acu <- 0
	
 //C�digo para ingresar n�meros a gusto:
//	Escribir "Ingrese la cantidad de n�meros que quiere v�lidar su negatividad"
//	Leer limite
//	Para i <- 1 Hasta limite Con Paso 1 Hacer
//		Escribir "Ingrese el " , i, "� n�mero: "
//		Leer num
//		
//		Si (num < 0) Entonces
//			Escribir "El ", num, " es negativo!"
//			acu <- acu + 1
//		FinSi
//		
//	Fin Para
	
	Para i <- 1 Hasta limite Con Paso 1 Hacer
		Escribir "Ingrese el " , i, "� n�mero: "
		Leer num
		
		Si (num < 0) Entonces
			Escribir "El ", num, " es negativo!"
			acu <- acu + 1
		FinSi
		
	Fin Para

Escribir "Ingresaste los " ,limite, " n�meros y ", acu, " de ellos fueron negativos!"
	
FinAlgoritmo
