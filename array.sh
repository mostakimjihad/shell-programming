#!/usr/bin/bash

arr=(1 12 31 4 5)

for ((i=0; i < ${#arr[*]}; i++))
do
	echo ${arr[i]}
done

