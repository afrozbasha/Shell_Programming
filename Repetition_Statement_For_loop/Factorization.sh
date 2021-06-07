#!/bin/bash -x

read -p "Enter a Num: " n

for ((i=1; i<=n+1; i++))
do
	if [ $((n%i)) -eq 0 ]
	then
		echo $i
	fi
done
