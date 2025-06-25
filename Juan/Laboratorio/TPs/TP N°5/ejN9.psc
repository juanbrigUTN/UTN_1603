Algoritmo ejN9
	
	Definir importe, billetes Como Real
	Definir flag Como Entero
	
	billetes <- 0
	flag <- 0
	
	Repetir
		
		Si flag = 0 Entonces
			Escribir "Por favor, ingrese importe distinto de 0"
			
		FinSi
		Escribir "Ingrese el importe de la compra"
		Leer importe
		flag <- 1
	Hasta Que importe <> 0
	
	Escribir "Se necesitan: "
	
	Si importe >= 100 Entonces
		billetes <- trunc(importe / 100)
		importe <- importe / 100
		Escribir billetes, " billetes de 100"
		billetes <- 0
	FinSi
	
	Si importe >= 50 Entonces
		billetes <- trunc(importe / 50)
		importe <- importe / 50
		Escribir billetes, " billetes de 50"
		billetes <- 0
	FinSi
	
	Si importe >= 20 Entonces
		billetes <- trunc(importe / 20)
		importe <- importe / 20
		Escribir billetes, " billetes de 20"
		billetes <- 0
	FinSi
	
	Si importe >= 10 Entonces
		billetes <- trunc(importe / 10)
		importe <- importe / 10
		Escribir billetes, " billetes de 10"
		billetes <- 0
	FinSi
	
	Si importe >= 5 Entonces
		billetes <- trunc(importe / 5)
		importe <- importe / 5
		Escribir billetes, " billetes de 5"
		billetes <- 0
	FinSi

	Si importe >= 2 Entonces
		billetes <- trunc(importe / 2)
		importe <- importe / 2
		Escribir billetes, " billetes de 2"
		billetes <- 0
	FinSi
	
	Si importe >= 1 Entonces
		billetes <- trunc(importe / 1)
		importe <- importe / 1
		Escribir billetes, " monedas de 1"
		billetes <- 0
	FinSi
	
	Si importe >= 0.5 Entonces
		billetes <- trunc(importe / 0.5)
		importe <- importe / 0.5
		Escribir billetes, " monedas de 100"
		billetes <- 0
	FinSi
	
	Si importe >= 0.25 Entonces
		billetes <- trunc(importe / 0.25) 
		importe <- importe / 0.25
		Escribir billetes, " monedas de 100"
		billetes <- 0
	FinSi
	
	Si importe >= 0.1 Entonces
		billetes <- trunc(importe / 0.25)
		Escribir billetes, " monedas de 100"
		billetes <- 0
	FinSi
	
FinAlgoritmo
	