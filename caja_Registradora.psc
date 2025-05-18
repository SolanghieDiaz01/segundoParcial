Algoritmo caja_Registradora 
	Dimension  producto[5] 
	Dimension cantidad[5]
	definir Acumulador Como Entero
	Acumulador=0
	z=1
	Para x<-1 Hasta 5 Con Paso 1 Hacer
		Escribir "Ingrese el producto a Comprar"
		leer producto[z]
		Escribir "Ingrese el valor del Producto"
		leer precio		
		Escribir "Ingrese la Cantidad"
		Leer cantidad[z]
		acumulador<-acumulador +precio*cantidad[z]// acumular Valores
		z=z+1
	Fin Para
	Escribir "El total acumulado durante el dia es:" Acumulador
	Escribir producto[1] " " cantidad[1] " " producto[2] " " cantidad[2] " " producto[3] " " cantidad[3] " " producto[4] " " cantidad[4] " " producto[5] " " cantidad[5]
FinAlgoritmo
