#!/bin/bash

clear 

key=your-ssh-key

run=$(cat has-run.txt)

if [ $run -ne "1" ];then
	echo "Your github email: "; read email
	echo "Your username: "; read username

	git config --global user.email "$email"
	git config --global user.name "$username"

	> has-run.txt; echo 1 > has-run.txt
fi

echo $KEY | xclip -selection c; echo "Your can now past your ssh key using Ctrl-V"

git config --global credential.helper store 

git add .

git commit -m "Logging In"

git push

echo "done ..."; sleep 1.5

clear