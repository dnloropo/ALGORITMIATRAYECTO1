// el caracol en el pozo - ejemplo del error de la condicion en ciclos
// pozo de 10 metros: el caracol sube 3 metros de dia y resbala 2 de noche
// cuantos dias tarda en salir?
// truco: solo resbala si no llego a la cima ese dia
// prueba: sale en el dia 8
Algoritmo caracol_pozo
	Definir altura, dias Como Entero

	altura <- 0
	dias <- 0

	Mientras altura < 10 Hacer
		dias <- dias + 1
		altura <- altura + 3
		Escribir "dia ", dias, ": subio a ", altura, " metros"

		// solo resbala si todavia no salio del pozo
		Si altura < 10 Entonces
			altura <- altura - 2
			Escribir "  (resbalo, quedo en ", altura, " metros)"
		FinSi
	FinMientras

	Escribir "el caracol salio en el dia ", dias
FinAlgoritmo
