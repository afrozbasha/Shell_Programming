#!/bin/bash -x

count=0


while [ $count != 11 ]
do
	coin=$((RANDOM%2))
	if [ $coin -eq 1 ]
	then
		((count++))
	fi
done
