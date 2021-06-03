#!/bin/bash -x

read -p "Enter the Day and Month : " d m

if [[ $m -ge 3 ]] && [[ $m -le 6 ]] && [[ $d -ge 20 ]] && [[ $d -le 31 ]]
then
	echo "True"
else
	echo "False"
fi

