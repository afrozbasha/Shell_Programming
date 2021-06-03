#!/bin/bash -x

read -p "Enter the Num : " n

case "$n" in
   "1") echo "Monday"
   ;;
   "2") echo "Tuseday"
   ;;
   "3") echo "Wednesday"
   ;;
   "4") echo "Thursday"
   ;;
   "5") echo "Friday"
   ;;
   "6") echo "Saturday"
   ;;
   "0") echo "Sunday"
   ;;
esac
