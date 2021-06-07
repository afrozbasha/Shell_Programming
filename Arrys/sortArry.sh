#!/bin/bash -x

t1=$((RANDOM%10 + 100))
t2=$((RANDOM%10 + 100))
t3=$((RANDOM%10 + 100))
t4=$((RANDOM%10 + 100))
t5=$((RANDOM%10 + 100))
t6=$((RANDOM%10 + 100))
t7=$((RANDOM%10 + 100))
t8=$((RANDOM%10 + 100))
t9=$((RANDOM%10 + 100))
t10=$((RANDOM%10 + 100))
count=0

arry[ ((count++)) ]=$t1
arry[ ((count++)) ]=$t2
arry[ ((count++)) ]=$t3
arry[ ((count++)) ]=$t4
arry[ ((count++)) ]=$t5
arry[ ((count++)) ]=$t6
arry[ ((count++)) ]=$t7
arry[ ((count++)) ]=$t8
arry[ ((count++)) ]=$t9
arry[ ((count++)) ]=$t10
echo ${arry[@]}



for((i=0; i<10; i++))
do
	for((j=0; j<10-i-1; j++))
	do
		if [[ ${arry[$j]} -gt ${arry[$j+1]} ]]
		then
			t=${arry[$j]}
			arry[$j]=${arry[$j+1]}
			arry[$j+1]=$t
		fi
	done
done

echo ${arry[@]}

if [[ ${arry[0]} -eq ${arry[1]} ]]
then
	echo "2-MIN: ${arry[2]}"
else
	echo "2-MIN: ${arry[1]}"
fi



for((i=0; i<10; i++))
do
   for((j=0; j<10-i-1; j++))
   do
      if [[ ${arry[$j]} -lt ${arry[$j+1]} ]]
      then
         t=${arry[$j]}
         arry[$j]=${arry[$j+1]}
         arry[$j+1]=$t
      fi
   done
done

echo ${arry[@]}

if [[ ${arry[0]} -eq ${arry[1]} ]]
then
   echo "2-MAX: ${arry[2]}"
else
   echo "2-MAX: ${arry[1]}"
fi
