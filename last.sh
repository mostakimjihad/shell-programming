#!/usr/bin/bash

read -p "Enter your number : " num
big=$(( $num % 10 ))
num=$(( $num / 10 ))
while [ $(( $num % 10 )) -ne 0 ]
do
	if [ $(( $num % 10 )) -gt $big ]
	then
		big=$(( $num % 10 ))
		num=$(( $num / 10 ))
	else
		num=$(( $num / 10 ))
	fi
done

echo The largest number is $big


