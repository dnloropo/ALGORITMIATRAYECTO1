// piramide de asteriscos con ciclos anidados
// fila 1: 1 asterisco centrado
// fila 2: 3 asteriscos
// fila n: 2n-1 asteriscos
// los espacios antes de cada fila = n - fila (para centrar)
// prueba n=3:
//   fila 1: "  *"      (2 espacios + 1 asterisco)
//   fila 2: " ***"     (1 espacio + 3 asteriscos)
//   fila 3: "*****"    (0 espacios + 5 asteriscos)
Algoritmo piramide
	Definir n, fila, j Como Entero

	Escribir "altura de la piramide:"
	Leer n

	Para fila <- 1 Hasta n Hacer
		// espacios para centrar: n - fila espacios antes de los asteriscos
		Para j <- 1 Hasta n - fila Hacer
			Escribir Sin Saltar " "
		FinPara

		// asteriscos: 2*fila - 1 asteriscos por fila
		Para j <- 1 Hasta 2 * fila - 1 Hacer
			Escribir Sin Saltar "*"
		FinPara

		// saltar a la siguiente linea
		Escribir ""
	FinPara
FinAlgoritmo
