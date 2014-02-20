#!/bin/sh

if [ -z $DOTFILES ]; then
    echo "Set the environment variable DOTFILES to the location of the checkout"
    exit 1
fi

[ ! -L $HOME/.vimrc ] && ln -s $DOTFILES/vim/vimrc $HOME/.vimrc
[ ! -L $HOME/.vim ] && ln -s $DOTFILES/vim $HOME/.vim
[ ! -L $HOME/.screenrc ] && ln -s $DOTFILES/screen/screenrc $HOME/.screenrc
[ ! -L $HOME/.bashrc ] && ln -s $DOTFILES/bash/bashrc $HOME/.bashrc
[ ! -L $HOME/.bash_profile ] && ln -s $DOTFILES/bash/bash_profile $HOME/.bash_profile
[ ! -L $HOME/.bash_logout ] && ln -s $DOTFILES/bash/bash_logout $HOME/.bash_logout
[ ! -L $HOME/.ssh/rc ] && ln -s $DOTFILES/ssh/rc $HOME/.ssh/rc
[ ! -L $HOME/.git-prompt.sh ] && ln -s $DOTFILES/bash/git-prompt.sh $HOME/.git-prompt.sh

exit 0
