read -p "enter value: " num
result=1
for (( count = 0; count <= $num ; count++ ))
do
        result=$(( (2**$count) ))
echo $result
done



