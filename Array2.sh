#!/bin/bash
# creating 10 random numbers of 3 digitand storing it in an array
for (( i = 0; i < 10; i++ )); do
	number=$((RANDOM%899+100))
	arr[((i))]=$number
done

len=`echo ${arr[@]} | wc -w`
echo $len

echo "Array : ${arr[@]}"

sorting(){
	for (( i = 0; i < $len; i++ )); do
		for (( j = 0; j < (len-i-1); j++ )); do
			if [[ ${arr[j]} -gt ${arr[j+1]} ]]; then
				#swap
				temp=${arr[j]}
				arr[$j]=${arr[$((j+1))]}
				arr[$((j+1))]=$temp 
			fi
		done
	done

}

sorting ${arr[@]}
echo "Sorted Array: ${arr[@]}"


echo "2nd max:${arr[$((len-2))]}"
echo "2nd min:${arr[1]}"