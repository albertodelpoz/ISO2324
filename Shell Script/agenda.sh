#!/bin/bash
#
#Autor: Alberto Del Pozo Maganez
#Tema: AGENDA
#Fecha: 17-01-2024

clear
while true ; do
echo "AGENDA"
echo " "
echo "A. Añadir una entrada "
echo "B. Buscar por DNI"
echo "C. Ver la agenda completa"
echo "D. Eliminar todas las entradas de la agenda"
echo "E. Finalizar"
echo " "
read -p "Introduce la opcion " menu
case $menu in
	A)
	echo "Vamos a añadir una entrada "
	read -p "Introduzca el DNI " dni
	if  grep "^$dni" agenda.txt 2>/dev/null ; then
		echo "Error"
	else
	 	read -p "Introduzca el nombre " nombre
		read -p "Introduzca el apellido " apellido
		read -p "Introduzca tu localidad " localidad
		echo $dni:$nombre:$apellido:$localidad >>agenda.txt
	fi 
	;;


	B)
	echo "Buscar por DNi"
	read -p "Introduzca el DNI " dniB
	if  grep "^$dniB" agenda.txt 2>/dev/null ;then
		nombre=$(grep "^$dniB" agenda.txt | cut -d ":" -f 2 )
		apellido=$(grep "^$dniB" agenda.txt | cut -d ":" -f 3 )
		localidad=$(grep "^$dniB" agenda.txt | cut -d ":" -f 4 )
		echo "La persona con DNI numero $dniB es $nombre : $apellido y vive en $localidad"
 
	else
		echo "ERROR"

	fi
	;;
	C)

		if [ -s agenda.txt ];then
			cat agenda.txt
		else
			echo "Agenda vacia"
		fi
	;;
	D)
		echo "" > agenda.txt
	;;
	E)
		echo "Finalizar"
		exit
	;;



esac
done
