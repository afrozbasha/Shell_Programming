#!/bin/bash -x

#CONST
FULL_TIME=1
PART_TIME=2
EMP_RATE_PER_HR=20
NUM_OF_WORKING_DAYS=10

#VAR
totalSal=0

for ((day=1; day<$NUM_OF_WORKING_DAYS; day++))
do
	empCheck=$((RANDOM%3))
	case $empCheck in
		$FULL_TIME)
			empHrs=8
		;;
		$PART_TIME)
			empHrs=4
		;;
		*)
			empHrs=0
		;;
	esac
wage=$(($EMP_RATE_PER_HR*$empHrs))
totalSal=$(($totalSal+$wage))

done
