#!/bin/bash -x
count=0
read -p "Enter a Num: " n

for ((i=1; i<=n+1; i++))
do
   if [ $((n%i)) -eq 0 ]
   then
		arry[ ((count++)) ]=$i
      echo $i
   fi
done

echo ${arry[@]}
