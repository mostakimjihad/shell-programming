#!/usr/bin/bash

read -p "Enter radius : " r
echo -n "Area = "
echo "scale=4; 3.1416*$r^2" | bc
