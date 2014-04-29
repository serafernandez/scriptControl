#!/bin/bash
minimo=2
while :
do
	uso=$(top -n 1 | grep Xorg | awk '{print $10}')
	if [ -n "$uso" ]
	then
		if [ $(echo "$uso>$minimo"|bc) -eq 1 ]
		then
			echo "Mayor"
		else
			echo "Menor"
		fi
	fi
done