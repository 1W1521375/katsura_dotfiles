#!/bin/bash

# vim
ln -sf ~/dotfiles/.vim ~/.vim > /dev/null 2>&1
ln -sf ~/dotfiles/.vim/.vimrc ~/.vimrc > /dev/null 2>&1

# tmux
ln -sf ~/dotfiles/.tmux/.tmux.conf ~/.tmux.conf > /dev/null 2>&1
ln -sf ~/dotfiles/.tmux ~/.tmux > /dev/null 2>&1

# zsh
ln -sf ~/dotfiles/.zsh/.zshrc ~/.zshrc > /dev/null 2>&1
ln -sf ~/dotfiles/.zsh/ ~/.zsh > /dev/null 2>&1

# jupyter
ln -sf ~/dotfiles/.jupyter/ ~/.jupyter > /dev/null 2>&1

# MySQL
#ln -sf ~/dotfiles/.my.cnf ~/.my.cnf > /dev/null 2>&1

# .bash_profile (Root権限なしリモートマシンの場合のみ)
ln -sf ~/dotfiles/.bash_profile ~/.bash_profile > /dev/null 2>&1

# ssh
#if [ -e {~/dotfiles/sbin/.ssh} ]; then
#    ln -sf ~/dotfiles/sbin/.ssh ~/.ssh > /dev/null 2>&1
#fi

