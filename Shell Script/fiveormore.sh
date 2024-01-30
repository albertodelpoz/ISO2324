#!/bin/bash
#Autor:Alberto Del Pozo Maganez
#Fecha: 29/01/2024 
clear

if [ $# -lt 2 ]; then 
	echo "exit"
	exit
fi
if [ -f $1 ]; then
	echo "Si existe "

fi
if [ ! -d $2 ];then
	echo "no existe"

fi
echo "Alberto del pozo maganez"
fich=$( ls $2 )

if [ -z $fich 2>/dev/null ];then
	echo "el directorio esta vacio"
fi
fichero=$( ls $2/*.txt)


for i in $fichero; do
	if [ -f $i ];then
	lineas=$(cat $i | wc -l)
if [ $lineas -ge 5 ]; then
#parte 3
	echo $i
	echo $i >> $1
#parte 4
	palabras=$(cat $i | wc -w )
	echo "El fichero tiene $palabras" > $i.q
	cat $i > $i.q
fi
fi
done
numero=$(cat $1| wc -l)

echo $numero >> $1
 
