#!/bin/bash

# Linking dotfiles to home
ln -sf ~/.dotfiles/shell/zshrc ~/.zshrc
mkdir ~/.zshrc.d

[[ -e ~/.vimrc ]] || ln -sf ~/.dotfiles/shell/vimrc ~/.vimrc
[[ -e ~/.vimrc-ide ]] || ln -sf ~/.dotfiles/shell/vimrc-ide ~/.vimrc-ide
[[ -e ~/.vim ]] || ln -sf ~/.dotfiles/shell/vim ~/.vim
[[ -e ~/.tmux.conf ]] || ln -sf ~/.dotfiles/shell/tmux.conf ~/.tmux.conf
[[ -e ~/.config/sakura ]] || ln -sf ~/.dotfiles/desktop/sakura ~/.config/sakura
[[ -e ~/.lessfilter ]] || ln -s ~/.dotfiles/shell/lessfilter ~/.lessfilter

# Run plugin download for vim
vim +PluginInstall +qall

# Installing tools if on ArchLinux
if [[ $(lsb_release -si) == 'Arch' ]] ; then
    pacman -S --noconfirm pass zsh vim tmux sakura openssh most lesspipe zsh-syntax-highlighting pygmentize
fi

exit 0
