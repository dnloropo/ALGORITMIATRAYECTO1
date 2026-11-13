// parqueadero del laboratorio de moodle (es otro distinto al del video)
// $3.000 por hora o fraccion
// mas de 6 horas: tarifa plana de $20.000
// con factura las 2 primeras horas son gratis
// 0 horas o menos es un error
// primero se descartan los casos especiales y al final queda el caso normal
Algoritmo ParqueaderoLaboratorio
	Definir horas, total Como Real
	Definir horasCobradas Como Entero
	Definir factura Como Caracter
	
	Escribir "horas que estuvo el vehiculo"
	Leer horas
	Escribir "tiene factura del centro comercial? (S/N)"
	Leer factura
	factura <- Mayusculas(factura)
	
	Si horas <= 0 Entonces
		Escribir "error: tiempo invalido"
	SiNo
		Si horas > 6 Entonces
			total <- 20000
		SiNo
			// hora o fraccion: si sobra un pedazo de hora se cobra completa
			horasCobradas <- trunc(horas)
			Si horas > horasCobradas Entonces
				horasCobradas <- horasCobradas + 1
			FinSi
			Si factura = "S" Entonces
				horasCobradas <- horasCobradas - 2
				Si horasCobradas < 0 Entonces
					horasCobradas <- 0
				FinSi
			FinSi
			total <- horasCobradas * 3000
		FinSi
		Escribir "total a pagar: $", total
	FinSi
FinAlgoritmo
