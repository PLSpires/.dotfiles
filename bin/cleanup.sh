#!/bin/bash

# Remove .nanorc in home directory
rm -f ~/.nanorc

# Remove source from .bashrc
SRCH="source ~/.dotfiles/etc/bashrc_custom"
sed -i 's/${SRCH}//g' ~/.bashrc

# Remove .TRASH in home directory
rm -rf ~/.TRASH
