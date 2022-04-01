#!/usr/bin/bash

read -p "Enter all a, b and c : " a b c

echo "scale=3; ($b-sqrt($b^2-4*$a*$c))/2*$a" | bc 

