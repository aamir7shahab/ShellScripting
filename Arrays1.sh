#!/bin/bash -x
# creating 10 random numbers of 3 digitand storing it in an array
for (( i = 0; i < 10; i++ )); do
	number=$((RANDOM%899+100))
	arr[((i))]=$number
done

echo ${arr[@]}

# variables to track min and max
max=${arr[0]};
min=${arr[0]};
max2=0;
min2=0;

# calculating 2nd max and 2nd min
for (( i = 0; i < 10; i++ )); do
	# checking 2nd max
	if [[ ${arr[i]} -gt $max ]]; then
		echo $max
		echo $max2
		max2=$max
		max=${arr[i]}
	fi
	# checking 2nd min
	if [[ ${arr[i]} -lt $min ]]; then
		min2=$min
		min=${arr[i]}
	fi
done
echo "Max:$max, Min:$min"
echo "2nd max:$max2"
echo "2nd min:$min2"