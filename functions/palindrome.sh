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
  echo "Number is palindrome"
else
  echo "Number is NOT palindrome"
fi
}

echo -n "Enter number : "
read number
palindrome $number
