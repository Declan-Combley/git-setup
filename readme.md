# What is this script
This script makes setting up git using ssh keys a bit less painful by storing your git info and copying your ssh key just before logging in.

# Prerequisites
- xclip
- internet 
- linux or a bash based terminal

# The best way to use this template
When you use this template make sure that the repository you create is private and head over to https://github.com/settings/tokens/new and create a new token, just make sure to copy it to your clipboard and paste it somewhere. Now head over to a terminal and clone the repository you have made using `git clone <link>` . If you are asked to set your git username and email use these two commands.

<br>

```bash
git config --global user.name "your-username"
git config --globas user.email "your-email"
```

<br>

If not, these steps still apply. It will then ask you to enter your username and password, just remember that your password will be the key that you copied, so just hit Control+Shift+V or Cmd+Shift+V if you're using mac. Now `cd` into your repository and `ls`, there will be two files, readme.md and login.sh. Before running the script you must replace the `key=<you're-ssh-key>` in line 5 of login.sh with your actual key which should still be copied. Now all thats left is to run the script (remember to save). To run it use these two commands

```bash 
chmod +x login.sh    # This just gives the script executable privileges and the ./ exetutes the file
./login.sh
```
