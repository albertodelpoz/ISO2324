#!/bin/bash
#
#Alberto Del Pozo Maganez
#
#23/01/2024
clear

echo "Alberto Del Pozo Maganez"

if [ $# != 2 ]; then
        echo "exit"
        exit
fi

if [ -f $1 ];then
	echo "fichero correcto"
	exit
fi
for ((i=0;i<$2;i++)) ;do
read -p "Operacion :Op1 Op2  " op op1 op2

case $op in

	S)
		suma=$(($op1+$op2))
		echo "La Suma es $suma"
		echo $op $op1 $op2  >> $1
	;;

	R)
		resta=$(($op1-$op2))
		echo "La resta es $resta"
		echo $op $op1 $op2 >> $1
	;;

	D)
		division=$(($op1/$op2))
		echo "La division es $division"
		echo $op $op1 $op2 >> $1

	;;

	M)
		multi=$(($op1*$op2))
		echo "La multiplicacion es $multi"
		echo $op $op1 $op2 >> $1

	;;

	X)
		echo "Salimos del script"
		break
	;;
	
	*)
	echo "ninguna es correcta"
	;;
esac
done
o=$(pwd)
echo "$o/$1"
echo "CONTENIDO DEL FICHERO"
cat $1
