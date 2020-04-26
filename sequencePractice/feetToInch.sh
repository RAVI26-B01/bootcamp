#! /bin/bash -x

read -p "enter inches: " x
awk "BEGIN {print $x/12}"

