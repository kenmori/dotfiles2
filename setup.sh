#!/bin/zsh


DOT_FILES=(.zshrc .vimrc .tmux.conf)

for file in ${DOT_FILES[@]}
do
	ln -s $HOME/dotfiles2/$file $HOME/$file
done




