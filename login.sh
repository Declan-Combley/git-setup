#!/bin/bash

key="<your-ssh-key>"

echo $key | xclip -selection c

echo "Your can now past your ssh key using Ctrl-V"

git config --global credential.helper store 

git add .

git commit -m "Logging In"

git push
