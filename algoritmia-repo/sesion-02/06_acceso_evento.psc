// acceso a un evento (ejercicio propuesto de moodle)
// pueden entrar los mayores de 18 con boleta,
// o los menores acompaniados de un adulto con boleta
// proposiciones: esMayor, tieneBoleta, vaAcompaniado
// en los dos casos hace falta la boleta, lo que cambia es
// que el menor ademas necesita ir acompaniado
Algoritmo AccesoEvento
	Definir edad Como Entero
	Definir respuesta Como Caracter
	Definir esMayor, tieneBoleta, vaAcompaniado Como Logico
	
	Escribir "cuantos anios tienes?"
	Leer edad
	esMayor <- edad >= 18
	
	Escribir "tienes boleta? (S/N)"
	Leer respuesta
	tieneBoleta <- Mayusculas(respuesta) = "S"
	
	Escribir "vienes con un adulto? (S/N)"
	Leer respuesta
	vaAcompaniado <- Mayusculas(respuesta) = "S"
	
	Si tieneBoleta Y (esMayor O vaAcompaniado) Entonces
		Escribir "puede entrar"
	SiNo
		Escribir "no puede entrar"
	FinSi
FinAlgoritmo
