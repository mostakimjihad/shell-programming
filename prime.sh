#!/usr/bin/bash

read -p "Enter Your number : " num

for ((i=2; i<=num/2; i++))
do
	r=$(( $num % $i ))
	echo $r
	if [ $r = 0 ]
	then
		echo $num is not a prime number
		exit 1
	fi
done

echo $num is a prime number
