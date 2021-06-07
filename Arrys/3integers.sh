#!/bin/bash -x

count=0

arry[ ((count++)) ]=1
arry[ ((count++)) ]=0
arry[ ((count++)) ]=-1
arry[ ((count++)) ]=2
arry[ ((count++)) ]=-3


for ((i=0; i<=4-2; i++))
do
	for ((j=i+1; j<4-1; j++))
	do
		for ((k=j+1; k<4; k++))
		do
			if [[ $((${arry[$i]}+${arry[$j]}+${arry[$k]})) -eq 0 ]]
			then
				echo "${arry[$i]}, ${arry[$j]}, ${arry[$k]}"
			fi
		done
	done
done
