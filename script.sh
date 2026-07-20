#!/bin/bash


sumar() {
	local num1=$1
	local num2=$2
	echo $((num1 * num2))
}

if [ $# = 2 ]; then
	sumar "$1" "$2"
fi



