#!/bin/bash -x

read -p "Enter the Num : " a

read -p "Enter the Num : " b

read -p "Enter the Num : " c

t1=$(($a + $b * $c))

t2=$(($a % $b + $c))

t3=$(($c + $a / $b))

t4=$(($a * $b + $c))

if [[ $t1 -gt $t2 ]] && [[ $t1 -gt $t3 ]] && [[ $t1 -gt $t4 ]]
then
	echo $t1 "Max"
elif [[ $t2 -gt $t1 ]] && [[ $t2 -gt $t3 ]] && [[ $t2 -gt $t4 ]]
then
	echo $t2 "Max"
elif [[ $t3 -gt $t1 ]] && [[ $t3 -gt $t2 ]] && [[ $t3 -gt $t4 ]]
then
   echo $t3 "Max"
elif [[ $t4 -gt $t1 ]] && [[ $t4 -gt $t2 ]] && [[ $t4 -gt $t3 ]]
then
   echo $t4 "Max"
fi



if [[ $t1 -lt $t2 ]] && [[ $t1 -lt $t3 ]] && [[ $t1 -lt $t4 ]]
then
   echo $t1 "Min"
elif [[ $t2 -lt $t1 ]] && [[ $t2 -lt $t3 ]] && [[ $t2 -lt $t4 ]]
then
   echo $t2 "Min"
elif [[ $t3 -lt $t1 ]] && [[ $t3 -lt $t2 ]] && [[ $t3 -lt $t4 ]]
then
   echo $t3 "Min"
elif [[ $t4 -lt $t1 ]] && [[ $t4 -lt $t2 ]] && [[ $t4 -lt $t3 ]]
then
   echo $t4 "Min"
fi
