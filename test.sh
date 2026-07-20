#!/bin/bash

echo "=== Ejecutando pruebas unitarias ==="

RESULTADO=$(./script.sh 2 3)

if [ "$RESULTADO" -eq 5 ]; then
	echo "Prueba 1 pasada: 2 + 3 = 5"
else
	echo "Prueba 1 fallo, se esperaba 5 pero se obtuvo '$RESULTADO'"
	exit 1
fi

echo "=== Todas las pruebas se ejecutaron con exito ==="
exit 0

