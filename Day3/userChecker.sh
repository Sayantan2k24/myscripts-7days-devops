read user

if grep $user /etc/passwd; 
then 
	echo "$user user exists"; 
else 
	echo "user does not exist so creating this user";

	useradd $user;
	
	grep $user /etc/passwd

	echo "user created"
fi
