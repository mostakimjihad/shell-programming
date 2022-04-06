read -p "Enter how many number : " num

read -a array
sum=0
flag=0

for(( i = 0; i < $num; i++ ))
do
	for(( j = 2; j < ${array[$i]}; j++ ))
	do
		if [ ${array[$i]} -eq 0 -o ${array[$i]} -eq 1 -o ${array[$i]} -eq 2 ]
		then
			flag=1
			break
		elif [ $(( ${array[$i]} % $j )) -eq 0 ]
		then

			flag=1
			break
		
		fi

	done

	if [ $flag -eq 0 ]
	then
		sum=$(( $sum + ${array[$i]} ))
	else
		flag=0
	fi

done


echo sum = $sum
