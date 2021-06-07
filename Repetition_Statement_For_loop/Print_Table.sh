#!/bin/bash -x

echo "Enter a Num: $1"

for (( i=0; i<=5; i++ ))
do
if [ $i -ge 1 ]
then
	r=$((2**$i))
	echo "2^$i = $r"
else
	echo "2^$i = 1"
fi

done

