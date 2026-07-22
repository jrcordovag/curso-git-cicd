#!/bin/bash


sumar() {
	local num1=$1
	local num2=$2
	echo $((num1 + num2))
}

generar_reporte() {
	local estado=$1
	if [ "$estado" = "ok" ]; then
		echo "SISTEMA_OK"
	else
		echo "SISTEMA_ERROR"
	fi 
}


if [ "$1" = "sumar" ]; then
	sumar "$2" "$3"

elif [ "$1" = "reporte" ]; then
	generar_reporte "$2"

fi

