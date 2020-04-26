range=10
i=0
while [ $i -lt $range ]
do
        random=$RANDOM
        arr[$i]=$(( $random%1000 ))
        i=`expr $i + 1`
done
printf "unsorted array :"
echo ${arr[*]}


for (( i=0 ; i<${#arr[@]}-2 ; i++ ))
do
	for (( j=0 ; j<${#arr[@]}-i-1 ; j++ ))
	do
		if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
		then
			temp=${arr[$j]}
			arr[$j]=${arr[$((j+1))]}
			arr[$((j+1))]=$temp
		fi
	done
done
echo "sorted array : "
echo ${arr[*]} 
num=$(( ${#arr[@]}-2 ))
echo "secondSmallest element: " ${arr[1]}
echo "secondLargest element: " ${arr[$num]}
