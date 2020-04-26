countTail=0
countHead=0
while (( $countTail < 11 ))  && (( $countHead < 11 ))
do
flip=$((RANDOM%2))
	if [ $flip == 1 ]
	then
		countTail=$(( countTail+1 ))
	elif [ $flip == 0 ]
	then
		countHead=$(( countHead+1 ))
	fi
done

if [ $countTail == 11 ]
then
	echo "tail win"
else
	echo "head wins"
fi

