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

function prime(){
n=$1
for ((i=2; i<$n/2; i++))
do
	if [ $(($n%i)) -eq 0 ]
	then
		echo "0"
		break
	fi
done
echo "1"
}



read -p "Enter a Num: " n
r1=$( palindrome $n )
r2=$( prime $n )

if [[ $r1 -eq 1 ]] && [[ $r2 -eq 1 ]]
then
	echo "$n this num is prime and palindrome"
fi

