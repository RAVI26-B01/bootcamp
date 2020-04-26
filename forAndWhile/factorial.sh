echo "enter number"
read num

fact=1
for (( i=1 ; i<=$num-1 ; i++ )) 
do
	fact=$((fact * i))
	printf $i'*'
done
printf $i
printf "\n"
echo $(( $fact*i ))
