#!/bin/bash -x

echo "Enter a Num: $1"
i=$1
while  [ $i -le 10 ]
do
if [ $i -ge 1 ]
then
	r=$((2**$i))
	if [ $r -le 256 ]
	then
		echo "2^$i = $r"
	else
		echo "2^$1 = 1"
	fi
fi
((i++))
done
