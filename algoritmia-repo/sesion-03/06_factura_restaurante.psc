// factura de restaurante descompuesta en subprocesos
// componentes:
//   - LeerPedido: pide el subtotal al usuario
//   - CalcularPropina: pregunta si quiere propina y calcula el 10%
//   - DividirCuenta: pregunta cuantas personas y divide el total
//   - ImprimirFactura: muestra el resumen completo
//
// arbol de componentes:
// factura_restaurante
// ├── LeerPedido()          -> retorna subtotal
// ├── CalcularPropina()     -> retorna propina (puede ser 0 si no quiere)
// ├── DividirCuenta()       -> retorna porPersona
// └── ImprimirFactura()     -> muestra subtotal, propina, total, porPersona

SubProceso subtotal <- LeerPedido
	Escribir "ingresa el valor del pedido:"
	Leer subtotal
	Si subtotal <= 0 Entonces
		Escribir "advertencia: el pedido debe ser mayor a 0"
		subtotal <- 0
	FinSi
FinSubProceso

SubProceso propina <- CalcularPropina(subtotal)
	Definir respuesta Como Caracter
	Definir propina Como Real

	Escribir "quieres dejar propina del 10%? (S/N)"
	Leer respuesta
	respuesta <- Mayusculas(respuesta)

	Si respuesta = "S" Entonces
		propina <- subtotal * 0.10
	SiNo
		propina <- 0
	FinSi
FinSubProceso

SubProceso porPersona <- DividirCuenta(total)
	Definir personas Como Entero

	Escribir "cuantas personas van a pagar?"
	Leer personas

	Si personas <= 0 Entonces
		Escribir "advertencia: debe haber al menos una persona"
		personas <- 1
	FinSi

	porPersona <- total / personas
FinSubProceso

SubProceso ImprimirFactura(subtotal, propina, total, porPersona)
	Escribir "-------- factura --------"
	Escribir "subtotal:     $", subtotal
	Escribir "propina:      $", propina
	Escribir "total:        $", total
	Escribir "por persona:  $", porPersona
	Escribir "-------------------------"
FinSubProceso

Algoritmo factura_restaurante
	Definir subtotal, propina, total, porPersona Como Real

	subtotal <- LeerPedido()
	propina <- CalcularPropina(subtotal)
	total <- subtotal + propina
	porPersona <- DividirCuenta(total)
	ImprimirFactura(subtotal, propina, total, porPersona)
FinAlgoritmo
