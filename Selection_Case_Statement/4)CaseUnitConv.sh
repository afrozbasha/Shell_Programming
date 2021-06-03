#!/bin/bash -x

echo "1:Feet to Inch 2:Feet to Meter"
echo "3:Inch to Feet 4:Meter to Feet"

read -p "Enter the which Conversion : " n


case "$n" in
	"1") read -p "Enter the input Feet : " f
	result=$(($f * 12))
	echo $result "Inch"
	;;
   "2") read -p "Enter the input Feet : " f
   result=$(($f * 0.3048 ))
   echo $result "Meter"
   ;;
   "3") read -p "Enter the input Inch : " f
   result=$(($f * 0.0833 ))
   echo $result "Feet"
   ;;
   "4") read -p "Enter the input Meter : " f
   result=$(($f * 3.2808 ))
   echo $result "Feet"
   ;;
esac
