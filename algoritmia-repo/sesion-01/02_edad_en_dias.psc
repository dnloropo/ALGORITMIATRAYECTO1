// programa que convierte la edad en anios a dias aproximados
// entrada: edad en anios
// proceso: multiplicar por 365 (aproximado, sin contar bisiestos)
// salida: dias vividos
// prueba 1: 20 anios -> 7300 dias
// prueba 2: 18 anios -> 6570 dias
Algoritmo edad_en_dias
	Definir edad Como Entero
	Definir dias Como Real

	Escribir "cuantos anios tienes?"
	Leer edad

	dias <- edad * 365

	Escribir "has vivido aproximadamente ", dias, " dias"
FinAlgoritmo
