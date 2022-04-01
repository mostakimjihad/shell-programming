#!/usr/bin/bash

read -p "Enter a, b and c : " a b c
echo -n "X1 = " 
echo "scale=3; (-$b+sqrt($b^2-4*$a*$c))/(2*$a)" | bc
echo -n "X2 = "
echo "scale=3; (-$b-sqrt($b^2-4*$a*$c))/(2*$a)" | bc

