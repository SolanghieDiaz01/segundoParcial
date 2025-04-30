Algoritmo pizzeria
	definir costoAcumulado Como Real
	Repetir
		Escribir "Pizzeria Hut"
		Escribir "seleccione el tamanio de la pizza deseada"
		Escribir "1. Personal"
		Escribir "2. Grande"
		Escribir "3. Gigante"
		leer tamanio
		si tamanio=1 Entonces
			costoAcumulado=80
		sino si tamanio =2 entonces 
				costoAcumulado=120
		    sino si tamanio =3 Entonces
					costoAcumulado=200
				FinSi
			FinSi 
		FinSi //terminamos tamanio
		Escribir "seleccione la especialidad de la pizza deseada"
		Escribir "1. Jamon"
		Escribir "2. Peperoni"
		Escribir "3. Carnes"
		leer especialidad 
		
		si tamanio=1 y especialidad=1 Entonces
			costoAcumulado=costoAcumulado+20
		sino si tamanio=1 y especialidad=2 Entonces
				costoAcumulado=costoAcumulado+25
			sino si tamanio=1 y especialidad=3 Entonces
					costoAcumulado=costoAcumulado+30
				FinSi
			FinSi
		FinSi 	
		si tamanio=2 y especialidad=1 Entonces
				costoAcumulado=costoAcumulado+25
		sino si tamanio=2 y especialidad=25 Entonces
				costoAcumulado=costoAcumulado+40
			sino si tamanio=2 y especialidad=3 Entonces
					costoAcumulado=costoAcumulado+50
				FinSi
			FinSi
		FinSi
		si tamanio=3 y especialidad=1 Entonces
				costoAcumulado=costoAcumulado+25
		sino si tamanio=3 y especialidad=2 Entonces
				costoAcumulado=costoAcumulado+2
			sino si tamanio=3 y especialidad=3 Entonces
					costoAcumulado=costoAcumulado+30
				FinSi
			FinSi
		FinSi
		
		
		Escribir "el total es:" costoAcumulado
		Esperar Tecla
		escribir "Desea hacer otra Orden 1. Si, 2. No"
		leer continuar 
	Hasta Que continuar=2
	
FinAlgoritmo
