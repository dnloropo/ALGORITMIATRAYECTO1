// cajero con centinela: acumulador y contador
// el cajero ingresa cobros hasta que escribe 0 para cerrar caja
// patron centinela: el valor 0 es la senal de parada
// contador y acumulador se inicializan FUERA del ciclo
Algoritmo cajero_centinela
	Definir valor, total Como Real
	Definir retiros Como Entero

	// inicializar fuera del ciclo - error comun es ponerlos adentro y se reinician
	total <- 0
	retiros <- 0

	Escribir "valor cobrado (0 para cerrar caja):"
	Leer valor

	Mientras valor <> 0 Hacer
		total <- total + valor   // acumulador
		retiros <- retiros + 1   // contador

		Escribir "valor cobrado (0 para cerrar caja):"
		Leer valor
	FinMientras

	Escribir "vehiculos atendidos: ", retiros
	Escribir "total recaudado: $", total
FinAlgoritmo
