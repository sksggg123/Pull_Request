#!bin/bash

file=".init/.init.txt"
flag=0
choice=0

if [ -e $file ];
then
	flag=1
fi

if [ $flag -ge 1 ]; 
then
	echo '=================================\n'
	echo '       Currently set state\n'
	cat $file
	echo '\n=================================\n'
	echo '\nPlease select your action..\n'
	echo '1. Clone Project\n'
	echo '2. Remote Setting\n'
	echo '3. Pull Project\n'
	echo '4. Update Setting Value\n'
	echo '5. Exit\n'
	read -p "num > " choice
else
	echo 'Require Repository Infomation..'
	sh set.sh
fi	

case $choice in
	1)
	sh clone.sh
	;;
	2)
	sh remote.sh
	;;
	3)
	sh pull.sh
	;;
	4)
	sh set.sh
	;;
	5)
	echo 'Exit..!!'
	;;
esac 
