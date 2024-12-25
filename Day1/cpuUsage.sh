#!/bin/bash

while :
do

	# idle_cpu=top -b -n 1 | grep "Cpu(s)" | awk '{ print $8 }'

	idle_cpu=`top -b -n 1 | grep "Cpu(s)" | cut -d "," -f 4 | awk '{print $1}'`

	total_cpu=100

	# expr can't handle floating point number
	#cpu_usage=`expr $total_cpu - $idle_cpu`

	cpu_usage=`echo $total_cpu  - $idle_cpu | bc`

	#echo -e  `date +"%r %D"`\t$cpu_usage

	echo -e "`date +"%r %D"`\t$cpu_usage"  >> cpu_report.tsv

	sleep 5

done
