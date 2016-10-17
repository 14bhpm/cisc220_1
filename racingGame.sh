#!/bin/bash

read -p "Please enter the number of lanes you would have " -n1 num

if [[ $num == [0-9] ]]; then
 echo okay
else
 echo not okay
fi

for (( n=0; n<$num; n++ )); do
 eval lane$n="1" && echo "\$lane$n equals ${lane$n}";
done


