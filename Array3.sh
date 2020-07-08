read -p "Enter a number for Prime Factorization: " num1

IsPrime(){
	num=$1
	flag=1
	upperLimit=`echo "x=$num/2;x" | bc`
	
	for (( i = 2; i <= $upperLimit; i++ )); do
	if [[ $((num%i)) == 0 ]]; then
		flag=0
		break
	fi
	done

	if [[ $flag == 0 ]]; then
		echo 0
	else
		echo 1
	fi
}

i=2
j=0
# arr[((j))]
while [[ ($num1 -gt 1) ]]; do
	mod=`echo "x=$num1%$i;x" | bc`
	Prime=$( IsPrime $i)
	
	if [[ $mod -eq 0 && $Prime -eq 1 ]]; then
		arr[((j))]=$i
		num1=`echo "x=$num1/$i;x" | bc`
		i=1
		j=$(( j+1 ))
	fi
	i=$(( i+1 ))
done

echo "Prime Factors are ${arr[@]}"