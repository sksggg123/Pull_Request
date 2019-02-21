#!bin/bash

file=".init/.init.txt"
localOwner=`cat $file |grep localOwner |awk '{print $2}'`
localRepository=`cat $file |grep localRepository |awk '{print $2}'`

# select 1 -> clone local repository
echo '\n=======================================================\n'
git clone https://github.com/${localOwner}/${localRepository}.git
echo '\n=======================================================\n'
