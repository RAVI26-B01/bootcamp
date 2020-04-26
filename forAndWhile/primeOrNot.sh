echo "enter a number"
read num

for (( i=2 ; i<=num/2 ; i++ ))
do
	if [ $((num%i)) -eq 0 ]
	then
		echo "its not a prime number"
		exit
	fi
done
echo "its a prime number"
