#!/usr/bin/bash
factorial () {
n=$1
fact=1
if [ $n -lt 0 ]
then
exit 1
else
for (( i=1; i <=$n; i++ ))
do
fact=$(( $fact * $i ))
done
fi
return $fact
}
read -p "Enter first and second number : " num1 num2
factorial $num1
rslt1=$?
factorial $num2
rslt2=$?
echo factorial of first number is $rslt1 second number is $rslt2
echo The sum = $(( $rslt1 + $rslt2 ))