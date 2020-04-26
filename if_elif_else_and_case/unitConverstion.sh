echo "press 1 to feet-inch conversion"
echo "press 2 to inch-feet conversion"
echo "press 3 to feet-meter conversion"
echo "press 4 to meter-feet conversion"
read num
feet_inch=1
inch_feet=2
feet_meter=3
meter_feet=4

case $num in
	$feet_inch )
		read -p "enter feet: " feet
		echo $(( 12*$feet )) "inches" ;;
	$inch_feet )
		read -p "enter inch: " inch
		awk "BEGIN {print $inch/12}" ;;
	$feet_meter )
		read -p "enter feet: " feet
		awk "BEGIN {print $feet/3.281}" ;;
	* )
		read -p "enter meter: " meter
		awk "BEGIN {print $meter*3.281}" ;;
esac
