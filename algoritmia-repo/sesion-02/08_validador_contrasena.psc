// validador de contrasenia (ejercicio propuesto de moodle)
// reglas: al menos 8 caracteres, al menos un numero
// y no puede contener la palabra "password"
// para el mensaje de error se niega cada regla por separado
// para buscar el numero y la palabra hay que recorrer el texto
// letra por letra, por eso usa un ciclo Para (tema de la sesion 03)
Algoritmo ValidadorContrasena
	Definir clave, minus, letra Como Caracter
	Definir i Como Entero
	Definir esCorta, tieneNumero, tienePassword Como Logico
	
	Escribir "escribe la contrasenia"
	Leer clave
	
	esCorta <- Longitud(clave) < 8
	
	tieneNumero <- Falso
	Para i <- 0 Hasta Longitud(clave) Hacer
		letra <- Subcadena(clave, i, i)
		Si letra >= "0" Y letra <= "9" Entonces
			tieneNumero <- Verdadero
		FinSi
	FinPara
	
	// se pasa a minusculas para que tambien detecte PASSWORD o Password
	minus <- Minusculas(clave)
	tienePassword <- Falso
	Para i <- 0 Hasta Longitud(minus) Hacer
		Si Subcadena(minus, i, i + 7) = "password" Entonces
			tienePassword <- Verdadero
		FinSi
	FinPara
	
	Si esCorta O NO tieneNumero O tienePassword Entonces
		Escribir "contrasenia invalida:"
		Si esCorta Entonces
			Escribir "- debe tener al menos 8 caracteres"
		FinSi
		Si NO tieneNumero Entonces
			Escribir "- debe tener al menos un numero"
		FinSi
		Si tienePassword Entonces
			Escribir "- no puede contener la palabra password"
		FinSi
	SiNo
		Escribir "contrasenia valida"
	FinSi
FinAlgoritmo
