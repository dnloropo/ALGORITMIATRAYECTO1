// ejercicio 1: de la regla a la condicion
// regla: te registras si tienes 14 anios o mas Y aceptas los terminos
// con Y las dos cosas tienen que ser verdaderas
Algoritmo ValidarRegistro
	Definir edad Como Entero
	Definir respuesta Como Caracter
	
	Escribir "cuantos anios tienes?"
	Leer edad
	Escribir "aceptas los terminos? (S/N)"
	Leer respuesta
	
	// sin esta linea, si escriben una s minuscula el programa dice que no acepto
	respuesta <- Mayusculas(respuesta)
	
	Si edad >= 14 Y respuesta = "S" Entonces
		Escribir "registro exitoso"
	SiNo
		Escribir "no puedes registrarte"
	FinSi
FinAlgoritmo
