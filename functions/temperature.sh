printf "enter 1 to find degF"
printf "\n"
printf "enter 2 to find degC"
printf "\n"
degF=1
degC=2


function temperature(){
	echo "num is"$1
case $1 in
	$degF )
		printf "enter temperature between 0-100 degree celsius: " 
		read degc
		if [ $degc -gt 0 ] && [ $degc -lt 100 ]
		then
			degf=$(( ($degc * 9/5)+32 ))
			echo "degf: " $degf
		else
			echo "please enter between 0 and 100 celsius"
		fi
		;;

	$degC )
		printf "enter temperature between 32-212 degree farenheit: " 
		read degf
		if [ $degf -gt 32 ] && [ $degf -le 212 ]
		then
			degc=$(( ($degf -32) * 5/9 ))
			echo "degc: " $degc
		else
			echo "please enter between 32 and 212 farenheit"
		fi
		;;
esac
}
read num
temperature "$num"
