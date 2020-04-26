#! /bin/bash

arr=()
echo "enter the num of elements" 
read num
for (( i=0 ; i<$num ; i++ ))
do
 	read -p "enter numbers: " n
	arr+=($n)
done
echo "the elements are: "${arr[@]}


 array(){

len=${#arr[@]}

for (( i=0 ; i<$len-2 ; i++ ))
do
	for (( j=i+1 ; j<$len-1 ; j++ ))
	do
		for (( k=j+1 ; k<$len ; k++ ))
		do
			if [ $(( arr[$i]+arr[$j]+arr[k] )) == 0 ]
			then
				echo -e "${arr[i]} \c"
				echo -e "${arr[j]} \c"
				echo -e "${arr[k]} \n"
			fi
		done
	done
done

}

array ${arr[@]}
