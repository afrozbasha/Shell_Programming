#!/bin/bash -x

digit1=$((RANDOM%6 + 1))
digit2=$((RANDOM%6 + 1))
echo $digit1 $digit2
result=$(($digit1 + $digit2))
echo Sum of the two dice num : $result
