win=0
loss=0
bet=0
sum=100

while !(( $sum==1 || $sum==200 ))
do
	risk=$(( $RANDOM%2 ))
	if (( $risk ))
	then
		win=$(( $win+1 ))
		sum=$(( $sum+1 ))
	else
		loss=$(( $loss+1 ))
		sum=$(( $sum-1 ))
	fi
	bet=$(( $bet+1 ))
done

echo "no of bets: " $bets
echo "won: " $win
echo "lost: " $loss
echo "total money: " $sum

if (( $win > $loss ))
then
	echo "won!!!"
else
	echo "lost"
fi
