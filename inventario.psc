Funcion productos
		dimension producto[5,4]
		Limpiar Pantalla
		Escribir "bienvenido al formulario de productos"
		Repetir
			Escribir "seleccione Operacion "
			Escribir "1. Agregar productos"
			Escribir "2. Eliminar producto"
			Escribir "3. Visualizar Productos producto"
			Escribir "4. Salir"
			leer continuar
			Segun continuar Hacer
				1:
					Para i<-1 Hasta 5 
						Para j<-1 Hasta 4
							si j=1 Entonces
								Escribir "Ingrese Codigo del producto "
								leer producto[i,j]
							sino si j=2 Entonces
									Escribir "Ingrese la descripcion del producto "
									leer producto[i,j]
								sino si j=3 Entonces
										Escribir "Ingrese el precio del producto "
										leer producto[i,j]
									sino si j=4 Entonces
											Escribir "Ingrese el cantidad del producto "
											leer producto[i,j]
										FinSi
									FinSi
									
								FinSi
							FinSi
							
							
							
						Fin Para
						
					Fin Para
				2: 
					Escribir "Ingrese el codigo del producto a eliminar"
					leer codigoEliminar
					Definir encontrado como Logico 
					encontrado <- Falso 
					
					para i <- 1 Hasta 5 
						Si producto[i,1]= codigoEliminar Entonces
							para j <- 1 Hasta 4
								producto[i,j] <- ""
							FinPara
							encontrado <- Verdadero
							Escribir" Producto eliminado correctamente."
						FinSi
					FinPara
					
					Si NO encontrado Entonces 
						Escribir" Producto no encontrado"
					FinSi
					
				3:
					Escribir""
					Escribir"Listado de productos:"
					para i<- 1 hasta 5
						si producto[i,1] <> "" Entonces
							Escribir"Producto",i, ":"
							Escribir"codigo:", producto[i,1]
							Escribir"Descripcion:", producto[i,2]
							Escribir"Precio:", producto[i,3]
							Escribir"Cantidad:", producto[i,4]
						    Escribir""
							
						FinSi
					FinPara
					
				4:
				De Otro Modo:
					Escribir "opcion no valida"
			Fin Segun
			
			
			
			
		Hasta Que continuar=4
		Escribir "Volviendo al menu princpal..."
		Esperar 2 Segundos
		Limpiar Pantalla
FinFuncion

Funcion  ventas
       dimension venta[5,4]
	   Limpiar Pantalla
	   Escribir "bienvenido al formulario de ventas"
	   Repetir
		   Escribir "seleccione Operacion "
		   Escribir "1. agregar venta"
		   Escribir "2. Eliminar venta"
		   Escribir "3. modificar venta"
		   Escribir "4. salir"
		   leer continuar
		  Segun continuar Hacer
			    1:
				   Para i<-1 Hasta 5 
					   Para j<-1 Hasta 4
						   si j=1 Entonces
							    Escribir "Ingrese Codigo de venta"
							    leer venta[i,j]
						 sino si j=2 Entonces
							    Escribir "Ingrese la descripcion de la venta "
							    leer venta[i,j]
							sino si j=3 Entonces
									Escribir "Ingrese el precio de la venta"
									leer venta[i,j]
								sino si j=4 Entonces
										Escribir "Ingrese la cantidad de la venta "
										leer venta[i,j]
									FinSi
								FinSi
								
							FinSi
						FinSi
						
						
						
					Fin Para
					
				Fin Para
			    2: 
				    Escribir "Ingrese el codigo del producto a eliminar"
				    leer codigoEliminar
				    Definir encontrado como Logico 
					encontrado <- Falso 
				 
				    Para i <- 1 Hasta 5 
					    Si venta[i,1]= codigoEliminar Entonces
						  para j <- 1 Hasta 4
						  	  venta[i,j] <- ""
						 FinPara
						  encontrado <- Verdadero
						  Escribir" Producto eliminado correctamente."
					    FinSi
				  FinPara
				 
				    Si NO encontrado Entonces 
					 Escribir" Producto no encontrado"
				    FinSi
				 
			   3:
				   Escribir""
				   Escribir"Listado de ventas:"
				   para i<- 1 hasta 5
					   si venta[i,1] <> "" Entonces
						  Escribir"venta",i, ":"
						  Escribir"codigo:", venta[i,1]
						  Escribir"Descripcion:", venta[i,2]
						  Escribir"Precio:",venta[i,3]
						  Escribir"Cantidad:", venta[i,4]
						  Escribir""
						 
					    FinSi
				    FinPara
				 
			    4:
			    De Otro Modo:
				Escribir "opcion no valida"
		   Fin Segun
		 
		 
		 
	   Hasta Que continuar=4  
	   Escribir "Volviendo al menu principal..."
	   Esperar 2 Segundos
	   Limpiar Pantalla
Fin Funcion

Algoritmo inventario 
	Repetir
		Escribir "bienvenidos al sistema de inventarios"
		Escribir "seleccione una opcion"
		Escribir "1. productos"
		Escribir "2. ventas"
		Escribir "3. salir"
		leer continuar
		
		Segun continuar Hacer
			1:
				productos
			2:
				ventas
			3:  
				Escribir "saliendo del sistema"
				Esperar 2 Segundos
			De Otro Modo:
				Escribir "Opcion no valida "
				Escribir "intentelo nuevamente"
				Esperar 2 Segundos
		Fin Segun
		
	Hasta Que continuar=3
	
FinAlgoritmo

