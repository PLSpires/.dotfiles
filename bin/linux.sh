#!/bin/bash

# gets OS name
VAR1=`uname`

# sends error if OS is not Linux
if [ $VAR1 == "Linux" ]
then
	echo "System is Linux"
else
	echo "ERROR: not Linux" >> linuxsetup.log
	exit
fi

# creates a Trash directory
mkdir -p ~/.TRASH

# replaces current .nanorc in home with etc/nanorc
if [ -f ".nanorc" ]
then
	mv ~/.nanorc ~/.bup_nanorc
	echo ".nanorc was changed to .bup_nanorc" >> linuxsetup.log
fi
cat ~/.dotfiles/etc/nanorc > ~/.nanorc

# adds a line to .bashrc in home dir
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
