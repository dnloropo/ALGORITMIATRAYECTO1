// programa que calcula el promedio de tres notas
// entrada: tres notas de 0 a 5
// proceso: sumar las tres y dividir entre 3
// salida: el promedio
// prueba 1: 4, 3.5, 4.5 -> promedio 4
// prueba 2: 3, 3, 4 -> promedio 3.33
Algoritmo promedio_notas
	Definir nota1, nota2, nota3, promedio Como Real

	Escribir "ingresa la nota 1:"
	Leer nota1
	Escribir "ingresa la nota 2:"
	Leer nota2
	Escribir "ingresa la nota 3:"
	Leer nota3

	// los parentesis son importantes: sin ellos primero divide nota3/3 y da mal
	promedio <- (nota1 + nota2 + nota3) / 3

	Escribir "el promedio es: ", promedio
FinAlgoritmo
