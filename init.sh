#!bin/bash

#https://github.com/sksggg123/Pull_Request.git

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
echo 'Clone Local ${localRepository}'
git clone https://github.com/${localOwner}/${localRepository}.git

cd ${localRepository}

git remote -v

# step 2 -> remote add..
echo 'Remote Add -> ${nickName}'
git remote add ${nickName} https://github.com/${remoteOwner}/${remoteRepository}.git

git remote -v

