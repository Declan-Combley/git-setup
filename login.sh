#!/bin/bash

echo -n "Have you set your git username and email? "

read answer

if [ $answer == "no" ] || [ $answer == "No" ]; then
  echo "use these commands"; echo ""; sleep .5

  echo 'git config --global user.email "your-email"'
  echo 'git config --global user.name "your-username"'
  
  echo ""; echo "do that and then run this script again"; sleep .5
  exit
fi

git config --global credential.helper store 

git add .

git commit -m "Logging In"

git push
