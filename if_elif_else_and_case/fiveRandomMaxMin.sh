a=$((RANDOM%1000))
b=$((RANDOM%1000))
c=$((RANDOM%1000))
d=$((RANDOM%1000))
e=$((RANDOM%1000))

if [ $a -gt $b ] && [ $a -gt $c ] && [ $a -gt $d ] && [ $a -gt $e ]
then
	echo "max value is $a"
elif [ $b -gt $c ] && [ $b -gt $d ] && [ $b -gt $e ]
then
	echo "max value is $b"
elif [ $c -gt $d ] && [ $d -gt $e ]
then
	echo "max value is $c"
elif [ $d -gt $e ]
then
	echo "max value is $d"
else
	echo "max value is $e"
fi

if [ $a -lt $b ] && [ $a -lt $c ] && [ $a -lt $d ] && [ $a -lt $e ]
then
        echo "min value is $a"
elif [ $b -lt $c ] && [ $b -lt $d ] && [ $b -lt $e ]
then
        echo "min value is $b"
elif [ $c -lt $d ] && [ $d -lt $e ]
then
        echo "min value is $c"
elif [ $d -lt $e ]
then
        echo "min value is $d"
else
        echo "min value is $e"
fi

