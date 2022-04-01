#!/usr/bin/bash

read -p "Enter how many number : " n

read -a a

h=${a[0]}

for ((i=1; i<n; i++ ))
do
	if [ ${a[$i]} -gt $h ]
	then
		h=${a[$i]}
	fi
done

echo Highest number is $h
