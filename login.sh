#!/bin/bash

clear 

key="<your-ssh-key>"

email=$(git config --get user.email)
name=$(git config --get user.name)

if [ $key == "<your-ssh-key>" ];then
	echo "You must replace the key variable with your ssh key in the login.sh file"; echo "If you don't know how to create an ssh key just follow this link https://github.com/settings/tokens/new, and select all relevant scopes."; exit
fi

if [ $email == "" ] || [ $name == "" ];then
	echo "Your github email: "; read email
	echo "Your username: "; read username

	git config --global user.email "$email"
	git config --global user.name "$username"
fi

echo $KEY | xclip -selection c; echo "Your can now past your ssh key using Ctrl-V"

git config --global credential.helper store 

git add .

git commit -m "Logging In"

git push

echo "done ..."; sleep 1.5

clear