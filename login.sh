#!/bin/bash

clear

echo "Your github email: "

read email

echo "Your username: "

read username

git config --global user.email "$email"
git config --global user.name "$username"

KEY=your-ssh-key

echo $KEY | xclip -selection c

git config --global credential.helper store 

git add .

git commit -m "Logging In"

git push
