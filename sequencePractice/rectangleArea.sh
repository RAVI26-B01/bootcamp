length=60
breadth=40
oneArea=$(( $length*$breadth ))
echo $oneArea

Total=$(( 25*$oneArea ))
echo "for 25 plots" $Total
echo  "25 plots in acres is"
awk "BEGIN {print $Total/43560}"
