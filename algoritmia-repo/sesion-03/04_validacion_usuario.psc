// limite de intentos: validar correo electronico con maximo 3 intentos
// reglas: el correo debe tener "@" y "."
// se revisa caracter por caracter con Subcadena
Algoritmo validacion_usuario
	Definir correo Como Caracter
	Definir i, intentos, longitud Como Entero
	Definir tieneArroba, tienePunto, esValido Como Logico

	intentos <- 0
	esValido <- Falso

	Mientras intentos < 3 Y NO esValido Hacer
		Escribir "ingresa tu correo electronico:"
		Leer correo
		intentos <- intentos + 1

		tieneArroba <- Falso
		tienePunto <- Falso
		longitud <- Longitud(correo)

		// revisar cada caracter buscando @ y .
		Para i <- 0 Hasta longitud - 1 Hacer
			Si Subcadena(correo, i, i) = "@" Entonces
				tieneArroba <- Verdadero
			FinSi
			Si Subcadena(correo, i, i) = "." Entonces
				tienePunto <- Verdadero
			FinSi
		FinPara

		esValido <- tieneArroba Y tienePunto

		Si NO esValido Entonces
			Escribir "correo invalido, intento ", intentos, " de 3"
		FinSi
	FinMientras

	Si esValido Entonces
		Escribir "correo valido: ", correo
	SiNo
		Escribir "acceso bloqueado: demasiados intentos fallidos"
	FinSi
FinAlgoritmo
