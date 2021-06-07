#!/bin/bash -x

read -p "Enter a start to end range Nums: " x y
for (( i=$x; i<=$y; i++))
do
flag=1
	for (( j=2; j<$x; j++))
	do
		if [ $(($i%$j)) -eq 0 ]
		then
				flag=0
				break
		fi
	done
	if [ $flag -eq 1 ]
	then
		echo "$i is Prime Num"
	fi

done
