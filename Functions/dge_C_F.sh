#!/bin/bash -x

function CtoF() {
degF=$(( ($1 * $((9/5)) ) + 32 ))
echo $degC
}


function FtoC() {
degC=$(( $(($1 - 32)) * $((5/9)) ))
echo $degF
}

echo "1: degC to degF"
echo "2: degF to degC"

read -p "Enter a choice" n

case "$n" in
	1)read -p "C to F Enter a C temp: " temp
		r=$( FtoC $temp)
		echo $r
		;;
	2)read -p "F to C Enter a F temp: " temp
		r=$( CtoF $temp)
		echo $r
		;;
esac
