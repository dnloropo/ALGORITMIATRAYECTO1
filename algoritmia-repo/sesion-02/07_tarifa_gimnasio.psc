// tarifa de un gimnasio (ejercicio propuesto de moodle)
// estudiantes pagan el 50 %, mayores de 60 pagan el 40 %
// si cumple las dos, aplica el mayor descuento (paga el 40 %)
// la tabla de decision muestra que si es mayor de 60 siempre paga 40 %,
// sea estudiante o no, por eso esa pregunta va primero
Algoritmo TarifaGimnasio
	Definir precio, total Como Real
	Definir edad Como Entero
	Definir respuesta Como Caracter
	
	Escribir "precio de la mensualidad"
	Leer precio
	Escribir "edad"
	Leer edad
	Escribir "es estudiante? (S/N)"
	Leer respuesta
	respuesta <- Mayusculas(respuesta)
	
	Si edad > 60 Entonces
		total <- precio * 0.40
	SiNo
		Si respuesta = "S" Entonces
			total <- precio * 0.50
		SiNo
			total <- precio
		FinSi
	FinSi
	
	Escribir "total a pagar: $", total
FinAlgoritmo
