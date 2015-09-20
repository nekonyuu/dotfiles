dotfiles
========

## Purpose

This is my collection of dotfiles, for work (and fun) use !

## Installation

Clone this repo and its submodules (mainly Vundle).

```shell
git clone https://github.com/nekonyuu/dotfiles.git ~/.dotfiles && cd ~/.dotfiles && git submodule update --init
```

### Automatic
You can use the setup.sh script at the root of the repo for
automatic installation, but **THAT'S NOT RECOMMENDED AS IT MAY
OVERWRITE YOUR CONFIGURATION**, and will install some Arch packages
if you are on Arch :).

### Manual

#### zsh

```shell
ln -s ~/.dotfiles/shell/zshrc ~/.zshrc
mkdir ~/.zshrc.d  # this folder is for custom shell sourcing
```

#### Vim

The vim part uses Vundle, so run the following after
linking ```~/.vimrc``` to ```shell/vimrc```
and ```~/.vim``` to ```shell/vim``` :

```shell
ln -s ~/.dotfiles/shell/vimrc ~/.vimrc
ln -s ~/.dotfiles/shell/vim ~/.vim
vim +PluginInstall +qall
```

#### tmux

```shell
ln -s ~/.dotfiles/shell/tmux.conf ~/.tmux.conf
```

## Customizations

### Airline ZSH PS1

You can enable a PS1 resembling my tmux theme by creating ```~/.zshrc.d/airline``` with the following content :

```bash
export AIRLINE_PS1="1"
```
