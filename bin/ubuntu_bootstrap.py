#!/usr/bin/python3

# neovim
# vim
# tmux
# vimperator
# git
# fish
# nyaovim

import os
import shutil

# ------------------------------------------------------------------------------
# neovim

def neovim():
    if not shutil.which('nvim'):
        # not installed neovim
        print('neovim not installed, see https://github.com/neovim/neovim/wiki/Installing-Neovim')
        return

    # neovim
    os.system('ln -nsf ~/.dotfiles/config/nvim ~/.config/')
    # vim
    os.system('ln -sf  ~/.dotfiles/config/nvim/init.vim ~/.vimrc')
    os.system('ln -sf  ~/.dotfiles/config/nvim/options.rc.vim ~/.vim/')
    os.system('ln -sf  ~/.dotfiles/config/nvim/keymap.rc.vim ~/.vim/')

    if not shutil.which('rusrc'):
         # not installed rust
        print('rust not installed ')

def git():
    if not shutil.which('git'):
        printf('sudo apt install git -y')
        return
    os.system('ln -sf  ~/.dotfiles/config/git/.gitconfig ~/')

def tmux():
    if not shutil.which('tmux'):
        printf('sudo apt install tmux -y')
        return
    os.system('ln -sf ~/.dotfiles/config/tmux/.tmux.conf ~/.tmux.conf')
    os.system('ln -nsf ~/.dotfiles/config/tmux/.tmux-powerline ~/.tmux-powerline')
    os.system('ln -sf ~/.dotfiles/config/tmux/default.sh ~/.tmux-powerline/themes/default.sh')
    os.system('ln -sf ~/.dotfiles/config/tmux/tmux_mem_cpu_load.sh ~/.tmux-powerline/segments/tmux_mem_cpu_load.sh')
    os.system('ln -sf ~/.dotfiles/config/tmux/weather.sh ~/.tmux-powerline/segments/weather.sh')

def vimperator():
    os.system('ln -sf ~/.dotfiles/config/vimperator/.vimperatorrc ~/.vimperatorrc')
    os.system('ln -nsf ~/.dotfiles/config/vimperator/.vimperator ~/.vimperator')

def fish():
    if not shutil.which('fish'):
        printf('sudo apt install fish -y')
        return
    os.system('ln -nsf ~/.dotfiles/config/fish/config.fish ~/.config/fish/config.fish')

def nyaovim():
    os.system('ln -nsf ~/.dotfiles/config/nyaovim//nyaovimrc.html ~/.config/nyaovim/nyaovimrc.html')

if __name__ == '__main__':
    neovim()
    git()
    tmux()
    vimperator()
    fish()
    nyaovim()
