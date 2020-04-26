#! /bin/bash

declare -A array1
array1[job]="parttime"
array1[name]="ravi"
array1[place]="mysore"
echo ${!array1[@]}
