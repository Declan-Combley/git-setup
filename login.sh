#!/bin/bash

KEY=your-ssh-key

echo $KEY | xclip -selection c

git config --global credential.helper store 

git add .

git commit -m "Logging In"

git push
