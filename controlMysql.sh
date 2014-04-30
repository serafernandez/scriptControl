#!/bin/bash
minimo=100
while :
do
	uso=$(top -n 1 | grep $1 | awk '{ print $10 }')
	if [ -n "$uso" ]
	then
		#echo $uso
		if [ $( awk -v uso=$uso -v minimo=$minimo 'BEGIN { if(uso>minimo) print 1; else print 0}' ) -eq 1 ]
		then
			print $(date)"------"$uso >> logMysql.log
		fi
	fi
	sleep 5s
done