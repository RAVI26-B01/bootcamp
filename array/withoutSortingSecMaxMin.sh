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


fl=${arr[0]}
sl=0

for (( i=0 ; i< ${#arr[@]} ; i++ ))
do
	if [ ${arr[$i]} -gt $fl ]
	then
		sl=$fl
		fl=${arr[i]}

	elif [ ${arr[$i]} -gt $sl ] && [ $fl != ${arr[$i]} ]
	then
		sl=${arr[i]}
	fi
done
echo "secondlargest=$sl"


for (( i=0 ; i< ${#arr[@]} ; i++ ))
do
        if [ ${arr[$i]} -lt $fl ]
        then
                sl=$fl
                fl=${arr[i]}

        elif [ ${arr[$i]} -lt $sl ] && [ $fl != ${arr[$i]} ]
        then
                sl=${arr[i]}
        fi
done
echo "secondsmallest=$sl"

