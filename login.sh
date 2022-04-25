#!/bin/bash

git config --global credential.helper store 

git add .

git commit -m "Logging In"

git push
