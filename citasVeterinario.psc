Algoritmo  citasVeterinario 
	//Declarar Variables
	Dimension mascotas[20]
	Dimension fechas[20]
	Definir opcion,i,pos, total Como Entero
	Definir nombreBuscado Como cadena 
	total<-1 // Controla cuantas citas hay registradas
	
	
	Repetir
		Escribir ""
		Escribir "===MENU DE CITAS VETERINARIAS==="
		Escribir "1. Agendar Citas"
		Escribir "2. Consultar Citas"
		Escribir "3. Modificar Cita"
		Escribir "4. Eliminar Cita"
		Escribir "5. Salir"
		Escribir "Seleccione una opcion"
		leer opcion 
		
		Segun opcion Hacer
			1: //Agendar cita 
				Si total <20 Entonces
					Escribir "Ingrese el nombre de la mascota:"
					leer mascotas[total]
					Escribir"Ingrese la fecha de la cita (formato: dd/mm/aaaa):"
					leer fechas[total] 
					total<-total+1
					Escribir"Cita agendada correctamente."
					
				Sino 
					Escribir"Limite de citas alcanzado."
					
				FinSi
			2: //consultar citas
				Si total=0 Entonces
					Escribir " No hay citas registradas."
				Sino 
					Escribir " Lista de citas:"
					para i<- 1 Hasta total-1 
						Escribir i+1, "Mascota:", mascotas[i], "fecha", fechas[i]
					FinPara
				FinSi
			3:   //modificar cita 
				Escribir "Ingrese el nombre de la mascota para modificar su cita:"
				Leer nombreBuscado
				pos<- -1 
				Para i<-1 Hasta total -1
					Si mascotas[i]= nombreBuscado Entonces
						pos<- i
					FinSi
				FinPara
				Si pos <> - 1 Entonces
					Escribir "Nueva fecha para", mascotas[pos],":"
					leer fechas[pos] 
					Escribir "Cita modificada exitosamente."
				Sino 
					Escribir"Mascota no encontrada."
					
				FinSi
				
				
			4: //eliminar cita
				Escribir "Ingrese el nombre de la mascota para eliminar su cita:"
				leer nombreBuscado
				pos<- -1 
				Para i <-1 Hasta total-1
					Si mascotas[i]= nombreBuscado Entonces
						pos<-i 
					FinSi
				FinPara
				Si pos <> -1 Entonces
					//desplazar elementos 
					para i<- pos Hasta total -2
						mascotas[i]<- mascotas[i+1]
					FinPara
				FinSi
		Fin Segun
		
	Hasta Que continuar=3
	
FinAlgoritmo
