// cuatro patrones en un solo recorrido: contador, acumulador, maximo y minimo
// pide la cantidad de estudiantes primero para saber cuantas notas leer
// maneja el caso de cantidad invalida (<= 0)
Algoritmo calificaciones
	Definir i, cantidad, reprobados Como Entero
	Definir nota, suma, mayor, menor Como Real

	Escribir "cuantos estudiantes hay?"
	Leer cantidad

	Si cantidad <= 0 Entonces
		Escribir "error: debe haber al menos un estudiante"
	SiNo
		suma <- 0
		reprobados <- 0

		// leer la primera nota para inicializar mayor y menor
		Escribir "nota del estudiante 1:"
		Leer nota
		mayor <- nota
		menor <- nota
		suma <- nota
		Si nota < 3.0 Entonces
			reprobados <- reprobados + 1
		FinSi

		// leer las notas restantes desde la 2
		Para i <- 2 Hasta cantidad Hacer
			Escribir "nota del estudiante ", i, ":"
			Leer nota
			suma <- suma + nota

			Si nota < 3.0 Entonces
				reprobados <- reprobados + 1
			FinSi
			Si nota > mayor Entonces
				mayor <- nota
			FinSi
			Si nota < menor Entonces
				menor <- nota
			FinSi
		FinPara

		Escribir "promedio del grupo: ", suma / cantidad
		Escribir "reprobados: ", reprobados
		Escribir "nota mas alta: ", mayor
		Escribir "nota mas baja: ", menor
	FinSi
FinAlgoritmo
