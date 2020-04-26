#! /bin/bash 
one=1
two=1
three=1
four=1
five=1
six=1
declare -A arr
while (( $one <=10 )) && (( $two<=10 )) && (( $three <=10 )) && (( $four<=10 )) && (( $five<=10 )) && (( $six<=10 ))
do
random=$(( (RANDOM%6)+1 ))

if (( $random==1 ))
then
	arr[one]=$one
	one=$(( $one+1 ))
elif (( $random==2 ))
then
	arr[two]=$two
	two=$(( $two+1 ))
elif (( $random==3 ))
then
        arr[three]=$three
        three=$(( $three+1 ))

elif (( $random==4 ))
then
        arr[four]=$four
        four=$(( $four+1 ))
elif (( $random==5 ))
then
        arr[five]=$five
        five=$(( $five+1 ))

elif (( $random==6 ))
then
        arr[six]=$six
        six=$(( $six+1 ))
fi
done

echo ${arr[@]}
echo ${!arr[@]}
