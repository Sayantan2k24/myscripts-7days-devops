while :
do

	memUse=`free -m  | head -2 | tail -1 | awk '{ print $3 }'`

	totalMem=`free -m  | head -2 | tail -1 | awk '{ print $2 }'`

	MemUsePercentage=`expr $memUse \* 100 / $totalMem`

	echo -e "`date +"%r %D"`\t$MemUsePercentage" >> memory_report.tsv

	if [[ $MemUsePercentage -ge 80 ]]
	then
		echo "security ALarm For Memory" | espeak-ng
		exit
	fi
	
	sleep 5
done	
