#! /bin/bash -x

read -p "enter start: " start
read -p "enter end: " end
diff=$end-$start+1
random=$RANDOM
echo $random
echo $(( ($start+($random%$diff)) ))
