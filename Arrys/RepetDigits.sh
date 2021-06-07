#!/bin/bash -x

for ((i=0; i<=11; i++))
do
	if [[ i -eq 11 ]]
	then
		n=$i
	fi
done

while [ $n -lt 100 ]
do
	arry[ ((count++)) ]=$n
	n=$(($n+11))
done
echo	${arry[@]}
