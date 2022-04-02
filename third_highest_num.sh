read -p "Enter your number : " num

f=0
s=0
t=0

while [ $(( num % 10 )) -gt 0 ]
do
	if [ $(( num % 10 )) -gt $f ]
	then
		t=$s
		s=$f
		f=$(( num % 10 ))
	elif [ $(( num % 10 )) -gt $s ]
	then
		t=$s
		s=$(( num % 10 ))
	elif [ $(( num % 10 )) -gt $t ]
	then
		t=$(( num % 10 ))
	fi

	num=$(( num / 10 ))
done

echo Third highest number = $t


