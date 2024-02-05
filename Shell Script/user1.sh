#!/bin/bash
#Autor:Alberto Del Pozo Maganez
#Fecha:02/02/2024
#User.sh

clear

if [ $# -gt 1 ];then
	echo "Error"
	exit
fi
date=$(date +%H:%M)
while read user x uid gid g home shell
do
	

	echo $user - $uid

done < /etc/passwd


