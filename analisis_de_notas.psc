Proceso analisis_de_notas
	Dimension notasIng[10];
	Definir notasIng,i,aprobados,reprobados como Enteros;
	Definir suma, promedio, notaMay, notaMen Como Real;
	
	suma<-0;
    aprobados<-0;
	reprobados<-0;
	
	escribir " Ingrese las notas de 10 estudiantes (valores entre 0 y 20):";
	
	para i<-0 Hasta 9 Hacer
		Repetir 
			Escribir "Nota del Alumno", i+1, ":";
			leer notasIng[i];
			
			Si notasIng[i]<0 o notasIng[i]>20 Entonces
				Escribir "Nota Incorrecta, debe estar entre 0 y 20.";
			FinSi
			
		Hasta Que notasIng[i]>=0 y notasIng[i]<=20;
		suma<-suma+notasIng[i];
	FinPara
	
	
	notaMay<-notasIng[0];
	notaMen<-notasIng[0];
	
	para i <-0 Hasta 9 Hacer;
		Si notasIng[i]>=11 Entonces
			aprobados<-aprobados+1;
		SiNo
			reprobados<-reprobados+1;
		FinSi
		
		Si notasIng[i]>notaMay Entonces 
			notaMay<-notasIng[i];
		FinSi
		
		Si notasIng[i]<notaMen Entonces
			notaMen<-notasIng[i];
		FinSi
	FinPara
	
	
	promedio<-suma/10;
	
	Escribir"";
	Escribir "Notas Ingresadas";
	para i<-0 Hasta 9 Hacer
		Escribir"Alumno", i+1, ":", notasIng[i];
		
	FinPara
	
	Escribir "";
	Escribir " El promedio General:", promedio;
	Escribir " Estudiantes que Aprobaron:", aprobados;
	Escribir " Estudiantes que Reprobaron:", reprobados;
	Escribir "La nota mas alta ha sido:", notaMay;
	Escribir "La nota mas baja ha sido:", notaMen;
	
FinProceso
