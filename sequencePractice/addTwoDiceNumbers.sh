#! /bin/bash -x

start=1
end=6
diff=$end-$start+1

random1=$RANDOM
dice1=$(( ($start+($random1%$diff)) ))
echo $dice1

random2=$RANDOM
dice2=$(( ($start+($random2%$diff)) ))
echo $dice2


echo "sum of 2 dice is: " $(( $dice1+$dice2 ))
