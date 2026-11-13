// app para dividir la cuenta del restaurante entre amigos
// entrada: valor de la cuenta, porcentaje de propina, numero de personas
// proceso: calcular propina, sumar al total, dividir entre personas
// salida: propina total, total con propina, cuanto paga cada uno
// prueba: cuenta 120000, propina 10%, 4 personas -> cada uno paga 33000
Algoritmo propinas
	Definir cuenta, porcentaje, propina, total, porPersona Como Real
	Definir personas Como Entero

	Escribir "ingresa el valor de la cuenta:"
	Leer cuenta
	Escribir "ingresa el porcentaje de propina:"
	Leer porcentaje
	Escribir "ingresa el numero de personas:"
	Leer personas

	// si no hay parentesis en porcentaje/100 el orden de operaciones da mal
	propina <- cuenta * (porcentaje / 100)
	total <- cuenta + propina
	porPersona <- total / personas

	Escribir "propina total: $", propina
	Escribir "total con propina: $", total
	Escribir "paga cada uno: $", porPersona
FinAlgoritmo
