#!/usr/bin/env python

import os
import sys
import platform

system = platform.system()

# ------------------------------------------------------------------------------
# neovim

def vim():
    print('>>> neovim & vim')
    if not os.path.exists(os.environ['HOME'] +  '/.vim'):
        os.mkdir(os.environ['HOME'] +  '/.vim')
    # neovim
    # os.system('ln -nsf ~/.dotfiles/config/nvim ~/.config/')
    os.system('ln -nsf ~/.dotfiles/config/nvim-next ~/.config/nvim')
    # vim
    os.system('ln -sf ~/.dotfiles/config/nvim/init.vim ~/.vimrc')
    os.system('ln -sf ~/.dotfiles/config/nvim/options.rc.vim ~/.vim/')
    os.system('ln -sf ~/.dotfiles/config/nvim/keymap.rc.vim ~/.vim/')
    print('<<< [ok] neovim & vim')

# ------------------------------------------------------------------------------
# nyaovim

def nyaovim():
    print('>>> nyaovim')
    os.system('ln -nsf ~/.dotfiles/config/nyaovim//nyaovimrc.html ~/.config/nyaovim/nyaovimrc.html')
    print('<<< [ok] nyaovim')


# ------------------------------------------------------------------------------
# tmux

def tmux():
    print('>>> tmux')
    if system:
        os_name = 'ubuntu'
        os.system('ln -sf ~/.dotfiles/config/tmux/weather.sh ~/.tmux-powerline/segments/weather.sh')
    else:
        # mac
        os_name = 'mac'
    os.system('ln -sf ~/.dotfiles/config/tmux/.tmux.{}.conf ~/.tmux.conf'.format(os_name))
    os.system('ln -sf ~/.dotfiles/config/tmux/default_{}.sh ~/.tmux-powerline/themes/default.sh'.format(os_name))
    os.system('ln -sf ~/.dotfiles/config/tmux/tmux_mem_cpu_load.sh ~/.tmux-powerline/segments/tmux_mem_cpu_load.sh')
    print('<<< [ok] tmux')

# ------------------------------------------------------------------------------
# git

def git():
    print('>>> git')
    os.system('ln -sf ~/.dotfiles/config/git/.gitconfig ~/.gitconfig')
    os.system('ln -sf ~/.dotfiles/config/git/config/.gitconfig_work ~/.gitconfig_work')
    os.system('ln -sf ~/.dotfiles/config/git/config/.gitconfig_private ~/.gitconfig_private')
    print('<<< [ok] git')

# ------------------------------------------------------------------------------
# font

def font():
    print('>>> fonts')
    os.system('ln -nsf ~/.dotfiles/config/fonts ~/.fonts')
    print('<<< [ok] fonts')

# ------------------------------------------------------------------------------
# fish

def fish():
    print('>>> fish')
    os.system('ln -nsf ~/.dotfiles/config/fish/config.fish ~/.config/fish/config.fish')
    print('<<< [ok] fish')


# ------------------------------------------------------------------------------
# alacritty

def alacritty():
    print('>>> alacrity')
    if not os.path.exists(os.environ['HOME'] +  '/.alacritty'):
        os.mkdir(os.environ['HOME'] +  '/.alacritty')
    os.system('ln -nsf ~/.dotfiles/config/alacritty ~/.config/alacritty')
    print('<<< [ok] alacritty')

# ------------------------------------------------------------------------------
# starship

def starship():
    print('>>> starship')
    os.system('ln -nsf ~/.dotfiles/config/starship/starship.toml ~/.config/starship.toml')
    print('<<< [ok] starship')



if '__main__' == __name__:
    version = platform.python_version_tuple()
    if version[0] == '2':
        print('Only python3!')
        sys.exit(1)
    git()
    fish()
    vim()
    tmux()
    starship()
    if system == 'Darwin':
        alacritty()
    # if system == 'Linux':
    #     nyaovim()
    #     font()
