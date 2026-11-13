// parqueadero del centro comercial
// reglas:
//   tipo 1 = carro: $4.000 por hora
//   tipo 2 = moto: $2.000 por hora
//   los primeros 15 minutos son gratis
//   se cobra por hora o fraccion (si entra un minuto de la hora siguiente, paga esa hora)
//   tope maximo: $30.000
//   si tiene factura de compra: las 2 primeras horas son gratis
// casos borde: minutos negativos = error, tipo invalido = error
// prueba carro 600 min con factura: 10 horas -> $40.000 -> tope $30.000 -> 2h gratis -> $20.000 -> descuento 2h = $8.000 -> total $22.000?
// segun el video: carro 600 min con factura -> tope 30000 -> con factura 15000
Algoritmo parqueadero
	Definir tipo, minutos, horas Como Entero
	Definir tarifa, valor Como Real
	Definir factura Como Caracter

	Escribir "tipo de vehiculo (1 = carro, 2 = moto):"
	Leer tipo
	Escribir "minutos de permanencia:"
	Leer minutos
	Escribir "tiene factura de compra? (S/N)"
	Leer factura
	factura <- Mayusculas(factura)

	Si minutos < 0 Entonces
		Escribir "error: los minutos no pueden ser negativos"
	SiNo
		// asignar tarifa segun tipo de vehiculo
		Segun tipo Hacer
			1:
				tarifa <- 4000
			2:
				tarifa <- 2000
			De Otro Modo:
				tarifa <- 0
		FinSegun

		Si tarifa = 0 Entonces
			Escribir "error: tipo de vehiculo no valido"
		SiNo
			Si minutos <= 15 Entonces
				// primeros 15 minutos gratis
				valor <- 0
			SiNo
				// cobrar por hora o fraccion: sumar 59 antes de dividir redondea hacia arriba
				horas <- trunc((minutos + 59) / 60)
				valor <- horas * tarifa

				// aplicar tope antes del descuento por factura
				Si valor > 30000 Entonces
					valor <- 30000
				FinSi

				// descuento factura: 2 primeras horas gratis (se restan despues del tope)
				Si factura = "S" Entonces
					valor <- valor - (2 * tarifa)
					// si el descuento da negativo, cobra 0
					Si valor < 0 Entonces
						valor <- 0
					FinSi
				FinSi
			FinSi

			Escribir "valor a pagar: $", valor
		FinSi
	FinSi
FinAlgoritmo
