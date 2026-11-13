# sesion 03 - patrones de repeticion y descomposicion

archivos de esta sesion:

- 01_caracol_pozo.psc — ciclo Mientras con condicion de borde
- 02_cajero_centinela.psc — patron centinela: acumulador y contador
- 03_calificaciones.psc — cuatro patrones en un recorrido
- 04_validacion_usuario.psc — limite de intentos: correo con "@" y "."
- 05_piramide.psc — ciclos anidados: espacios y asteriscos
- 06_factura_restaurante.psc — SubProcesos y arbol de componentes

---

## tabla de traza: caracol en el pozo (01_caracol_pozo)

pozo = 10 m, sube 3, resbala 2 (si no llego a la cima)

| dia | sube a | llego? | resbala a |
|-----|--------|--------|-----------|
| 1   | 3      | no     | 1         |
| 2   | 4      | no     | 2         |
| 3   | 5      | no     | 3         |
| 4   | 6      | no     | 4         |
| 5   | 7      | no     | 5         |
| 6   | 8      | no     | 6         |
| 7   | 9      | no     | 7         |
| 8   | 10     | si     | -         |

**resultado: sale el dia 8**

---

## tabla de traza: piramide n=3 (05_piramide)

| fila | espacios (n-fila) | asteriscos (2f-1) | linea |
|------|-------------------|-------------------|-------|
| 1    | 2                 | 1                 | `  *` |
| 2    | 1                 | 3                 | ` ***` |
| 3    | 0                 | 5                 | `*****` |

---

## arbol de componentes: factura_restaurante (06_factura_restaurante)

```
factura_restaurante
├── LeerPedido()           retorna: subtotal
├── CalcularPropina(subtotal)  retorna: propina (0 si no quiere)
├── DividirCuenta(total)   retorna: porPersona
└── ImprimirFactura(subtotal, propina, total, porPersona)
```

---

## prueba de escritorio: cajero centinela (02_cajero_centinela)

entradas: 5000, 3000, 7000, 0

| iteracion | valor leido | total | retiros |
|-----------|-------------|-------|---------|
| inicio    | -           | 0     | 0       |
| 1         | 5000        | 5000  | 1       |
| 2         | 3000        | 8000  | 2       |
| 3         | 7000        | 15000 | 3       |
| centinela | 0           | 15000 | 3       |

**resultado: 3 vehiculos, $15000 recaudados**
