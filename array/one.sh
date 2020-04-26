arr=();
range=10
i=0
while [ $i -lt $range ]
do
        random=$RANDOM
        arr[$i]=$(( $random%1000 ))
        i=`expr $i + 1`
done
printf "elements are:"
echo ${arr[@]}
echo ${#arr[@]} 

echo ${arr[3]}
