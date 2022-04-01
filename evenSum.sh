#!/usr/bin/bash

read -p "Enter How Many number : " n
oddSum=0
evenSum=0
i=0

while [ $i -lt $n ]
do
	echo Enter your  number
	read num
	if [ $(( $num % 2 )) -eq 0 ]
	then
		evenSum=$(( $evenSum + $num ))
	else
		oddSum=$(( $oddSum + $num ))
	fi
	i=$(( $i + 1 ))
done

echo Odd sum = $oddSum
echo Even sum = $evenSum
	
