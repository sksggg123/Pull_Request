#!bin/bash

#https://github.com/sksggg123/Pull_Request.git

echo 'input remote info'
read -p " remote owner > " remoteOwner
read -p " renite repository > " remoteRepository 

echo '\n\n'

echo 'input local url'
read -p " local owner > " localOwner
reap -p " local repository > " localRepository

echo '\n\n'

echo 'input remote alias'
read -p ' > ' nickName



git clone https://github.com/${localOwner}/${localRepository}

