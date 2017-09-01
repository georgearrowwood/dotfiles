#!/bin/bash

#install brew
which -s brew
if [[ $? != 0 ]] ; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo brew is already installed
  brew update
fi

# install bash completion
if brew ls --versions bash-completion > /dev/null; then
  echo "bash-completion is already installed"
else
  brew install bash-completion
fi

if [ -f ~/.bash_profile ]; then
  echo "dot file exist"
else
  cp -R .bash_profile .bashrc .vimrc .vim ~
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 
  vim -c 'PluginInstall' -c 'qa!'
fi

# install nvm
if brew ls --versions nvm > /dev/null; then
  echo nvm is already installed
else
  brew install nvm
  mkdir -p ~/.nvm
fi

# install node
. $(brew --prefix nvm)/nvm.sh
if which node > /dev/null; then
  echo node is already installed
else
  nvm install 8
  eval "`npm completion`"
fi

source ~/.bashrc