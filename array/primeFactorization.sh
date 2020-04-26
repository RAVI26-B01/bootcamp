num=$1
count=0
for (( i=2 ; i<=$1 ; i++ ));
do
	while [ $((num%i)) == 0 ];
	do
		arr[((count++))]=$i
		num=$((num/$i))
	done
done
echo ${arr[@]}
