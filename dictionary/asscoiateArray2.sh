#! /bin/bash

dict=("name:ravi" "job:full" "country:india")
input=${dict[2]}
echo $input

echo ${input%%:*}
echo ${input##*:}
