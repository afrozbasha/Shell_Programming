#!/bin/bash -x


for((i=1; i<=6; i++))
do
	dice[$i]=0
done

count=1

while [[ dice[$i] -ne 10 ]]
do
	r=$((RANDOM%6+1))
   result[$count]=$r
   ((count++))
   case $r in
      1) i=1
         dice[$i]=$((${dice[i]}+1))
      ;;
      2) i=2
         dice[$i]=$((${dice[i]}+1))
      ;;
      3) i=3
         dice[$i]=$((${dice[i]}+1))
      ;;
      4) i=4
         dice[$i]=$((${dice[i]}+1))
      ;;
      5) i=5
         dice[$i]=$((${dice[i]}+1))
      ;;
      6) i=6
         dice[$i]=$((${dice[i]}+1))
      ;;
   esac
done

minc=${dice[1]}
maxc=${dice[1]}

min=0
max=0

for((i=1; i<=6; i++))
do
	if [[ ${dice[i]} -ge $maxc ]]
	then
	maxc=${dice[i]}
	max=$i
	elif [[ ${dice[i]} -le $minc ]]
	then
	minc=${dice[i]}
	min=$i
	fi
done


echo "Dice thrown sequence is : ${result[@]}"

echo "1 Num is ${dice[1]} times"
echo "2 Num is ${dice[2]} times"
echo "3 Num is ${dice[3]} times"
echo "4 Num is ${dice[4]} times"
echo "5 Num is ${dice[5]} times"
echo "6 Num is ${dice[6]} times"
echo "min no.of times = $minc is got by this num $min"
echo "max no.of times = $maxc is got by this num $max"
