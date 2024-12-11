# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## bin/linux.sh
Creates a .TRASH dir in home
Overwrites .nanorc in home with etc/nanorc
Adds "source ~/.dotfiles/etc/bashrc_custom" to .bashrc in home
## bin/cleanup.sh
This script reverses anything done by linux.sh
(Removes .nanorc, remes "source" from .bashrc, removes .TRASH)
## etc/bashrc_custom
This sets up a few helpful aliases
cdd = "cd .."
lsa = "ls -A"
lsl = "ls -l"
lsal = "ls -Al"
cselab = "ssh -p 222 username@129.252.130.???" (this needs to be set up for the user)
trash = moves a file/dir to .TRASH
rmtrash = empties .TRASH

Also has two shorthands for tar
targz = tar -zcvf a directory
untar = tar -xvf a directory
## etc/nanorc
set autoindent
set boldtext
set mouse
set tabsize 4 
set keycolor blue,red
## Makefile
Contains targes "linux" and "clean" which run their respective scripts
