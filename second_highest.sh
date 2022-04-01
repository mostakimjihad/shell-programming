#!/usr/bin/bash

read -p "Enter your number : " num

a=0
b=0

while [ $(( $num % 10 )) -gt 0 ]
do
	if [ $(( $num % 10 )) -gt $a ]
	then
		b=$a
		a=$(( $num % 10 ))
	elif [ $(( $num % 10 )) -gt $b ]
	then
		b=$(( $num % 10 ))
	fi
	num=$(($num / 10 ))
done

echo The second highest number is $b
