#!/usr/bin/env python

import os
import sys
import platform

linux = platform.linux_distribution()[0]

# ------------------------------------------------------------------------------
# neovim

def vim():
    print('>>> neovim & vim')
    if not os.path.exists(os.environ['HOME'] +  '/.vim'):
        os.mkdir(os.environ['HOME'] +  '/.vim')
    # neovim
    os.system('ln -nsf ~/.dotfiles/config/nvim ~/.config/')
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
    if linux:
        if linux == 'Ubuntu':
            os_name = 'ubuntu'
            os.system('ln -sf ~/.dotfiles/config/tmux/weather.sh ~/.tmux-powerline/segments/weather.sh')
        else:
            os_name = 'vm'
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


if '__main__' == __name__:
    version = platform.python_version_tuple()
    if version[0] == '2':
        print('Only python3!')
        sys.exit(1)
    git()
    fish()
    vim()
    tmux()
    if linux == 'Ubuntu':
        nyaovim()
        font()
