#!/bin/bash

echo "Checking for Vundle..."
if [ ! -f ~/.vim/bundle/Vundle.vim/README.md ];
then
	echo "Vundle not found! Install it first"
	exit 1
fi

cp ./vimrc ~/.vimrc
echo "Removing, updating and installing bundles..."
vim +PluginClean! +PluginInstall! +qall

echo "Copy theme colors"
cp -r  ~/.vim/bundle/vim-monokai/colors ~/.vim/

echo "All synced!"
