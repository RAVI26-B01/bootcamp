
function isPrime(){
	num=$1

for (( i=2 ; i<=num/2 ; i++ ))
do
        if [ $((num%i)) -eq 0 ]
        then
                echo "its not a prime number"
                exit
        fi
done
echo "its a prime number"
}


function palindrome(){
        num=$1
store=0

rev=""

originalNumber=$num

while [ $num -gt 0 ]
do
    store=$(( $num % 10 ))
    num=$(( $num / 10 ))

    rev=$( echo ${rev}${store} )
done

if [ $originalNumber -eq $rev ];
then
  echo "palindrome Number is also prime"
else
  echo "its NOT palindrome "
fi
}

echo -n "Enter number : "
read number
isPrime $number
palindrome $number
