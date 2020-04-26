
read -p "enter number" num

unit=$(( $num%10 ))
tens=$(( $num%100-$unit ))
hundreds=$(( $num%1000-$tens-$unit ))
thousand=$(( $num%10000-$hundreds-$tens-$unit ))

echo "unit: " $unit
echo "tens: " $(( $tens/10 ))
echo "hundreds: " $(( $hundreds/100 ))
echo "thousand: " $(( $thousand/1000 ))
