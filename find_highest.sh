#!/usr/bin/bash

read -p "Enter How Many Numbers : " num
echo -n "Enter All Numbers : "
read -a arra


for (( i=0; i<num-1; i++ ))
do
	for(( j=0; j<num-1; j++ ))
	do
		if [ ${arra[j]} -lt ${arra[j+1]} ]
		then
			temp=${arra[j]}
			arra[j]=${arra[j+1]}
			arra[j+1]=$temp
		fi
	done
done

second=${arra[1]}
third=${arra[2]}

echo second highest number = $second
echo third highest number = $third
echo sum of them = $(( $second + $third ))

