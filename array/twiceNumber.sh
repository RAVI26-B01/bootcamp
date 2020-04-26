arr=();
count=0
i=0
while (( $i<100 ))
do

	arr[((count++))]=$i 
	i=$(( $i+11))
done
echo ${arr[@]}

