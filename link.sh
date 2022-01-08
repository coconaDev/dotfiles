#!/bin/bash
DOT_FILES=(.bashrc .profile)

for file in ${DOT_FILES[@]}
do
	ls -s $HOME/dotfiles/$file $HOME/$file
done
