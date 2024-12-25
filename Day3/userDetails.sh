# cat will give you array of invidual line/userdetail record

for i in `cat /etc/shadow`
do
	echo $i
	sleep 1

done
