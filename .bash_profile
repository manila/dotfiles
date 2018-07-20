#!/bin/sh

# ~/.bash_profile
if [ -f ~/.bashrc ]; then
	. ~/bashrc
fi

# Adding ~/bin to PATH variable

PATH=~/bin:$PATH

export PATH
