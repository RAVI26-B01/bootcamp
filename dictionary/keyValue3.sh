#! /bin/bash

dict=("name:ravi" "job:fulltime" "palce:mysuru")

function key(){
input=("$@")
keyArray=()

for ele in "${input[@]}"
do
	keyArray+=("${ele%%:*}")
done

echo ${keyArray[@]}
}

function value(){
input=("$@")
vlaueArray=()

for ele in "${input[@]}"
do
	vlaueArray+=("${ele##*:}")
done
echo ${vlaueArray[@]}
}

printf "keys are: "
echo $(key "${dict[@]}")
printf "values are: "
echo $(value "${dict[@]}")
