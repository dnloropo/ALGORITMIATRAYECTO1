// ejercicio 2: negar sin equivocarse (ley de De Morgan)
// valida:   edad >= 0 Y edad <= 120
// invalida: edad < 0  O edad > 120
// al negar se da vuelta a cada comparacion y se cambia el Y por O
// si se deja el Y queda "edad < 0 Y edad > 120", que nunca se cumple
// y el programa aceptaria cualquier edad
Algoritmo ValidarEdad
	Definir edad Como Entero
	
	Escribir "escribe la edad"
	Leer edad
	
	Si edad < 0 O edad > 120 Entonces
		Escribir "edad invalida"
	SiNo
		Escribir "edad valida"
	FinSi
FinAlgoritmo
