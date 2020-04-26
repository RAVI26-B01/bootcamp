#! /bin/bash -x

Flips=$(( $(( RANDOM%10 ))%2 ))

if [ $Flips -eq 1 ]
then
	echo "head"
else
	echo "tails"
fi

