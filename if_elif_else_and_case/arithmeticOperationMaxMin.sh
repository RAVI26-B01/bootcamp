read -p "enter a: " a
read -p "enter b: " b
read -p "enter c: " c
d=$(( $a + $b * $c ))
e=$(( $a % $b + $c ))
f=$(( $c + $a / $b ))
g=$(( $a * $b + $c ))

if [ $d -gt $e ] && [ $d -gt $f ] && [ $d -gt $g ]
then
	echo "the max number is a+b*c" $d
elif [ $e -gt $f ] && [$e -gt $g ]
then
	echo "the mac number is a%b+c" $e
elif [ $f -gt $g ]
then
	echo "the max number is c+a/b" $f
else
	echo "the max number is a*b+c" $g
fi


if [ $d -lt $e ] && [ $d -lt $f ] && [ $d -lt $g ]
then
	echo "min number is a+b*c" $d
elif [ $e -lt $f ] && [ $e -lt $g ]
then
	echo "min number is a%b+c" $e
elif [ $f -gt $g ]
then 
	echo "min number is c+a/b" $f
else
	echo "min number is a*b+c" $g
fi
