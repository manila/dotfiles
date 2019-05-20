#!/bin/sh

# ~/.bash_profile
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# exercism bash completion
if [ -f ~/.config/exercism/exercism_completion.bash ]; then
	source ~/.config/exercism/exercism_completion.bash
fi

# Adding ~/bin to PATH variable

PATH=~/bin:$PATH
PATH="/usr/java/jre1.8.0_211/bin:$PATH"

export PATH
