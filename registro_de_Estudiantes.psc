Algoritmo registro_de_Estudiantes 
	Dimension nombres[50]
	Dimension Edades[50]
	Definir j, i, mayorEd, menorEd, posMay, posMen Como Entero
	
	Escribir "Cuantos estudiantes ingresara?"
	leer j
	
	para i<-1 Hasta j con paso 1 
		Escribir "Ingrese el nombre del Estudiante ", i,":"
		leer nombres[i]
		Escribir "Ingrese la edad de ", nombres[i], ":"
		leer edades[i] 
	FinPara
	
	Escribir ""
	Escribir "Registro de estudiantes"
	para i<-1 Hasta j con paso 1 
		Escribir "Estudiante",i,":",nombres[i],",", edades[i], " anios" 
		
	FinPara
	
	mayorEd <- edades[1]
	menorEd <- edades[1]
	posMay <- 1
	posMen <- 1
	
	para i<- 2 Hasta j con paso 1 
		Si edades[i] > mayorEd Entonces
			mayorEd <- edades[i]
			posMay <- i 
		FinSi
		
		Si edades[i] < menorEd Entonces
			menorEd <- edades[i]
			posMen <- i 
		FinSi
	FinPara
	
	Escribir ""
	Escribir "El resultado es:"
	Esperar Tecla
	Escribir "Estudiante mayor: ", nombres[posMay],",", mayorEd, " anios"
	Escribir "Estudiante menor: ", nombres[posMen],",", menorEd, " anios"
	
	
FinAlgoritmo
