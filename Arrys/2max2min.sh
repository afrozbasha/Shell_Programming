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


s1=s2=$t1

for((i=0; i<10; i++))
do
	if [[ ${arry[$i]} -lt $s1 ]]
	then
		s2=$s1
		s1=${arry[$i]}
	elif [[ ${arry[$i]} -lt $s2 ]] && [[ ${arry[$i]} != $s1 ]]
	then
		s2=${arry[$i]}
	fi
done


l1=l2=$t1
for((i=0; i<10; i++))
do
   if [[ ${arry[$i]} -gt $s1 ]]
   then
      l2=$l1
      l1=${arry[$i]}
   elif [[ ${arry[$i]} -gt $l2 ]] && [[ ${arry[$i]} != $l1 ]]
   then
      l2=${arry[$i]}
   fi
done
