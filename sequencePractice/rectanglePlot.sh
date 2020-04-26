#! /bin/bash -x

length=60
breadth=40
oneArea=$(( $length*$breadth ))

awk "BEGIN {print $oneArea/10.764}"
