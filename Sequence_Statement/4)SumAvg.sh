#!/bin/bash -x

digit1=$((RANDOM%10 + 10))
digit2=$((RANDOM%10 + 10))
digit3=$((RANDOM%10 + 10))
digit4=$((RANDOM%10 + 10))
digit5=$((RANDOM%10 + 10))

echo $digit1 $digit2 $digit3 $digit4 $digit5 

sum=$(($digit1 + $digit2 + $digit3 + $digit4 + $digit5))
avg=$(($sum/5))

echo sum=$sum avr=$avg

