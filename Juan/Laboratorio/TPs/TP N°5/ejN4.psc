Algoritmo ejN4
	Definir num, cantidad Como Entero
	Definir min Como Real
	limite <- 20
	acu <- 0
	
	Escribir "Ingrese el número entero: "
	Leer num
	
	min <- num
	
	Escribir "Ingrese la cantidad de números reales que quiere ingresar: "
	Leer cantidad
	
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Escribir "Ingrese el ", i ,"° número real"
		Leer num
		
		Si (num < min) Entonces
			min <- num
		FinSi
	FinPara
	
	Escribir "El menor número ingresado es: ", min
	
FinAlgoritmo