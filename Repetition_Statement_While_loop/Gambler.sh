#!/bin/bash -x

Rs=100
lossCount=0
Win=200
count=1
WinCount=0

while [ true ]
do
	Bet=$((RANDOM%2))
	((count++))
	case $Bet in
		1)
			((Rs++))
			((WinCount++))
			if [ $Rs -eq $Win ]
			then
				echo "You Win 100 RS"
				echo "You winned $WinCount times"
				echo "You attempted $count times"
				break
			fi
		;;
		0)
			((Rs--))
			((lossCount++))
			if [ $Rs -eq 0 ]
			then
				echo "You loss 100 Rs"
				echo "You loss $lossCount times"
				echo "You attempted $count times"
				break
			fi
			;;
		esac
done
