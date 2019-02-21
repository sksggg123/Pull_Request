#!bin/bash

file=".init/.init.txt"

updateFlag=`cat $file |wc -l`

if [ $updateFlag -ge 1 ]
then
	echo '=================================\n'
	echo '       Currently set state\n'
	cat $file
	echo '\n=================================\n'
	echo 'There is information already created. Do you want to edit it?(y/n)'
	read -p " > " update
fi

if [ $update = 'y' ]
then
	echo '' > $file
	echo 'Setting Project\n'
	echo 'input remote info\n'
	read -p " remote owner > " remoteOwner
	read -p " renite repository > " remoteRepository 

	echo '\n'

	echo 'input local url'
	read -p " local owner > " localOwner
	read -p " local repository > " localRepository

	echo '\n'

	read -p 'alias > ' nickName

	echo "remoteOwner	${remoteOwner}" >> $file
	echo "remoteRepository	${remoteRepository}" >> $file
	echo "localOwner	${localOwner}" >> $file
	echo "localRepository	${localRepository}" >> $file 
	echo "alias	${nickName}" >> $file
fi

