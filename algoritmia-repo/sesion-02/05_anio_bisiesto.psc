// reto 2: anio bisiesto (la deuda de EdadEnDias)
// un anio es bisiesto si es divisible entre 4 Y no es divisible entre 100,
// O si es divisible entre 400
// anio MOD 4 = 0 significa que es divisible entre 4
// los parentesis dejan claro que primero va el Y y despues el O
Algoritmo Bisiesto
	Definir anio Como Entero
	
	Escribir "escribe un anio"
	Leer anio
	
	Si (anio MOD 4 = 0 Y anio MOD 100 <> 0) O anio MOD 400 = 0 Entonces
		Escribir anio, " es bisiesto"
	SiNo
		Escribir anio, " no es bisiesto"
	FinSi
FinAlgoritmo
