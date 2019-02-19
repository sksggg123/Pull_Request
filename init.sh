#!bin/bash

echo 'input remote info'
read -p " remote owner > " remoteOwner
read -p " renite repository > " remoteRepository 

echo '\n\n'

echo 'input local url'
read -p " local owner > " localOwner
read -p " local repository > " localRepository

echo '\n\n'

echo 'input remote alias'
read -p ' > ' nickName


# step 1 -> clone local repository
echo 'Clone Local ${localRepository}\n'
echo '\n=======================================================\n'
git clone https://github.com/${localOwner}/${localRepository}.git
echo '\n=======================================================\n'
cd ${localRepository}

# step 2 -> remote add..
echo 'Remote Add -> ${nickName}\n'
echo '\n=======================================================\n'
git remote add ${nickName} https://github.com/${remoteOwner}/${remoteRepository}.git
echo '\n=======================================================\n'

echo '\n\nRemote stat\n'
echo '\n=======================================================\n'
git remote -v
echo '\n=======================================================\n'
