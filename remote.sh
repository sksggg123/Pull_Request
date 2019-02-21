#!bin/bash

file=".init/.init.txt"
remoteOwner=`cat $file |grep remoteOwner |awk '{print $2}'`
remoteRepository=`cat $file |grep remoteRepository |awk '{print $2}'`
nickName=`cat $file |grep alias |awk '{print $2}'`
path=`pwd`

if [[ $path =~ $remoteRepository ]] 
then
	echo ''
else
	cd ${remoteRepository}
fi

# select 2 -> remote add..
echo "\n\nRemote Add -> ${nickName}\n"
git remote add ${nickName} https://github.com/${remoteOwner}/${remoteRepository}.git

echo '\n\nRemote stat\n'
echo '\n=======================================================\n'
git remote -v
echo '\n=======================================================\n'
