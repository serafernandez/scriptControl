#!/bin/bash
minimo=5
while :
do
	uso=$(top -n 1 | grep Xorg | awk '{print $10}')
	echo $uso
	#if [ -n "$uso" ]
	#then
		#echo $uso

		#if [ $( awk -v uso=$uso -v minimo=$minimo 'BEGIN { if(uso>minimo) print 1; else print 0}' ) -eq 1 ]
		#then
		#	echo "Mayor"
		#else
		#	echo "Menor"
		#fi
	#fi
done