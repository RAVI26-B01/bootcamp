#! /bin/bash

dict1=("name:ravi" "job:fulltime" "place:mysuru")
input=${dict1[0]}
echo $input
echo ${input%%:*}
echo ${input##*:}
