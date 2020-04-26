#! /bin/bash

array1=( "fulltime" "ravi" "india" )
echo "name" ${array1[1]}

declare -A array
array[job]="fulltime"
array[name]="ravi"
array[country]="india"
echo ${array[job]}
echo ${!array[name]}
