#!/bin/bash -x

declare -A dict

dict[dog]="bark"
dict[cow]="moo"
dict[bird]="tweet"
dict[wolf]="howl"

echo "Dog sound :: " ${dict[dog]}

echo "All animal sounds" ${dict[@]}

echo "All animals :: " ${!dict[@]}

echo "Num of animals :: " ${#dict[@]}

unset dict[wolf]
echo "All animals after DELT :: " ${!dict[@]}
