#! /bin/bash -x

maxCount=5
Count=1

echo
while [ $Count -le $maxCount ]
do
	num=$(( $RANDOM%100 ))
	echo $num
	sum=$(( sum+=$num))
	let "Count += 1"
done
echo "sum is: "$sum
echo "avg is: "$(( $sum/$maxCount ))
