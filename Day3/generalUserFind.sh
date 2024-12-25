for line in `cat /etc/passwd`
do
	myid=`echo $line | cut -d: -f3`	

	if [[ $myid -ge 1000 ]]
 	then
		echo $line
		
	fi
done
