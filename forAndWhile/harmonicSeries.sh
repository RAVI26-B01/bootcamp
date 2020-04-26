#! /bin/bash
read -p "enter nth num: " num

for (( count=1; count<=$num-1 ; count++ ))
do
        printf 1/$count'+' ;
done
echo '1'/$num

