// reto 1: semaforo de inventario
// menos de 0  -> error
// 0           -> rojo: agotado
// de 1 a 10   -> amarillo: hay que pedir
// mas de 10   -> verde: todo bien
// primero se descarta el error y despues se va de menor a mayor,
// asi cada Si solo revisa un limite
Algoritmo Semaforo
	Definir unidades Como Entero
	
	Escribir "cuantas unidades hay?"
	Leer unidades
	
	Si unidades < 0 Entonces
		Escribir "error: las unidades no pueden ser negativas"
	SiNo
		Si unidades = 0 Entonces
			Escribir "rojo: agotado"
		SiNo
			Si unidades <= 10 Entonces
				Escribir "amarillo: hay que pedir"
			SiNo
				Escribir "verde: todo bien"
			FinSi
		FinSi
	FinSi
FinAlgoritmo
