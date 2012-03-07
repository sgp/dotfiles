#!/bin/sh

if [ -z $DOTFILES ]; then
    echo "Set the environment variable DOTFILES to the location of the checkout"
    exit 1
fi

[ ! -L $HOME/.vimrc ] && ln -s $DOTFILES/vim/vimrc $HOME/.vimrc
[ ! -L $HOME/.vim ] && ln -s $DOTFILES/vim $HOME/.vim
[ ! -L $HOME/.screenrc ] && ln -s $DOTFILES/screen/screenrc $HOME/.screenrc

exit 0
