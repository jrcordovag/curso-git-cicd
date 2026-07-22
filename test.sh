#!/bin/bash

echo "=== Ejecutando Pruebas Unitarias ==="

# Prueba 1: Suma
RESULTADO_SUMA=$(./script.sh sumar 2 3)
if [ "$RESULTADO_SUMA" -eq 5 ]; then
    echo "✔ Prueba 1 pasada: 2 + 3 = 5"
else
    echo "✖ Prueba 1 falló: Se esperaba 5 pero se obtuvo '$RESULTADO_SUMA'"
    exit 1
fi

# Prueba 2: Generar Reporte OK
RESULTADO_REPORTE=$(./script.sh reporte ok)
if [ "$RESULTADO_REPORTE" = "SISTEMA_OK" ]; then
    echo "✔ Prueba 2 pasada: Reporte OK funcional"
else
    echo "✖ Prueba 2 falló: Se esperaba 'SISTEMA_OK' pero se obtuvo '$RESULTADO_REPORTE'"
    exit 1
fi

echo "=== Todas las pruebas pasaron con éxito ==="
exit 0
