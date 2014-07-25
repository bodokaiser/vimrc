#!/bin/bash

# get directory name
SCRIPT=$0
SCRIPTDIR=$(dirname -- "$SCRIPT")

# remove old files
rm -rf $HOME/.vim || echo "Removing .vim failed!"
rm -rf $HOME/.vimrc || echo "Removing .vimrc failed!"
echo "Removed old vim files."

# copy complete directory
cp -r -- $SCRIPTDIR $HOME/.vim || echo "Copying to .vim failed!"
echo "Copied new vim files."

# link entry files
ln -s $HOME/.vim/vimrc $HOME/.vimrc || echo "Linking to .vimrc failed!"
echo "Linked new vim files."

# clone newest vundle
cd $HOME/.vim/bundle/ && git clone https://github.com/gmarik/vundle.vim
echo "Cloned newest vundle version"

# install plugins
vim +PluginInstall +qall
echo "Plugins installed, ready to go"
