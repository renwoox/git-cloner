#! /bin/sh
#Author : sanumala
#License : Feel Free to share and enhance
echo "Enter the name of the git project which you want to clone?"
read projectName
echo "Enter the name of the owner/author?"
read author
echo "Alias name? (Leave empty for default)"
read aliasName

cloneCommand="git clone git@github.com:$author/$projectName.git"
if [ ! -z "$aliasName" ]; then
	eval "$cloneCommand $aliasName"
else
	eval "$cloneCommand"
fi
echo "Okey! Your Repository has been cloned to `pwd` with $cloneCommand $aliasName"
#Simple script Will refine soon to make it more usable...
