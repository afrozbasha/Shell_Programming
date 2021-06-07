#!/bin/bash -x

function palindrome() {
n=$1
r=""
while [ $n -gt 0 ]
do
	a=$(($n % 10))
	n=$(($n / 10))

	r=$(echo ${r}${a})
done
if [ $1 -eq $r ]
then
	echo "1"
else
	echo "0"
fi
}


read -p "Enter a Two nums: " x y
t=$( palindrome $x)
if [ $t -eq 1 ]
then
	echo "$x is palindrome"
else
	echo "$x is Not palindrome"
fi
t=$(palindrome $y)
if [ $t -eq 1 ]
then
   echo "$y is palindrome"
else
	echo "$y is Not palindrome"
fi
