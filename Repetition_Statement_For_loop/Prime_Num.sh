#!/bin/bash -x

read -p "Enter a Num : " n

for (( i=2; i<$n/2; i++ ))
do
	if [ $(($n%i)) -eq 0 ]
	then
		echo "$n is not prime Num"
		exit
fi
done

echo "$n is a prime Num"


