#! /bin/bash -x

read -p "enter date: " dat
read -p "enter month: " month
if [ $(( date +$dat$month )) -gt $(( date +2003)) ]  || [ $(( date +$dat$month )) -lt $(( date +2006 )) ]
then
	echo "true"
else
	echo "false"
fi
