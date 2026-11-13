# sesion 02 - logica proposicional y estructuras de decision

archivos de esta sesion:

- 01_registro.psc — validar registro con Y (edad >= 14 y acepta terminos)
- 02_edad_valida.psc — negar sin equivocarse: De Morgan en validaciones
- 03_parqueadero.psc — tarifas del parqueadero con tabla de decision
- 04_semaforo_inventario.psc — semaforo de inventario: decision anidada
- 05_anio_bisiesto.psc — anio bisiesto: casos borde con MOD
- 06_acceso_evento.psc — acceso a evento: boleta y mayoria de edad
- 07_tarifa_gimnasio.psc — tarifa de gimnasio con descuentos
- 08_validador_contrasena.psc — validador de contrasena: longitud y reglas
- laboratorio_parqueadero.psc — laboratorio: parqueadero con fraccion de hora y topes

---

## tabla de verdad: registro (01_registro)

| edad >= 14 | acepta = "S" | puede registrarse (Y) |
|------------|--------------|----------------------|
| falso      | falso        | falso                |
| falso      | verdadero    | falso                |
| verdadero  | falso        | falso                |
| verdadero  | verdadero    | verdadero            |

---

## tabla de verdad: De Morgan en edad valida (02_edad_valida)

la condicion original: `edad < 0 O edad > 120` -> invalida
que es lo mismo que negar: `NOT (edad >= 0 Y edad <= 120)`

| edad | edad < 0 | edad > 120 | es invalida (O) |
|------|----------|------------|-----------------|
| -1   | verdadero | falso     | verdadero        |
| 0    | falso    | falso      | falso            |
| 120  | falso    | falso      | falso            |
| 121  | falso    | verdadero  | verdadero        |

---

## tabla de decision: parqueadero (03_parqueadero)

| tipo | minutos | factura | calculo | resultado |
|------|---------|---------|---------|-----------|
| 1 (carro) | 10 | N | <= 15 min gratis | $0 |
| 1 (carro) | 60 | N | 1 hora x $4000 | $4000 |
| 1 (carro) | 61 | N | 2 horas x $4000 | $8000 |
| 1 (carro) | 600 | N | 10h x $4000 = 40000 -> tope | $30000 |
| 1 (carro) | 600 | S | tope 30000 - 2h gratis (8000) | $22000 |
| 2 (moto) | 60 | N | 1 hora x $2000 | $2000 |
| 3 (invalido) | 60 | N | tipo no valido | error |
| 1 (carro) | -5 | N | minutos negativos | error |

---

## prueba de escritorio: anio bisiesto (05_anio_bisiesto)

| anio | mod 4 = 0 | mod 100 = 0 | mod 400 = 0 | es bisiesto |
|------|-----------|-------------|-------------|-------------|
| 1900 | verdadero | verdadero   | falso       | falso       |
| 2000 | verdadero | verdadero   | verdadero   | verdadero   |
| 2024 | verdadero | falso       | falso       | verdadero   |
| 2026 | falso     | falso       | falso       | falso       |
