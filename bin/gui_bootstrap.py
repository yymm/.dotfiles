#!/usr/bin/env python3

# for ubuntu/osx
# - neovim
# - vim
# - tmux
# - vimperator
# - git
# - fish
# - nyaovim

import os
import sys
import shutil
import platform

# ------------------------------------------------------------------------------
# neovim

def neovim():
    print('>>> neovim & vim')
    if not shutil.which('nvim'):
        print('Error[neovim] >> not installed, see https://github.com/neovim/neovim/wiki/Installing-Neovim')
        return
    # neovim
    os.system('ln -nsf ~/.dotfiles/config/nvim ~/.config/')
    # vim
    os.system('ln -sf ~/.dotfiles/config/nvim/init.vim ~/.vimrc')
    os.system('ln -sf ~/.dotfiles/config/nvim/options.rc.vim ~/.vim/')
    os.system('ln -sf ~/.dotfiles/config/nvim/keymap.rc.vim ~/.vim/')
    # Dependency
    # > Jedi
    # $ pip2 install --user --upgrade neovim
    # $ pip3 install --user --upgrade neovim
    # $ pip2 install --user jedi
    # $ pip3 install --user jedi
    # > Racer
    # - Install rustlang => curl -sSf https://static.rust-lang.org/rustup.sh | sh
    # - Downloads rust source code => https://www.rust-lang.org/en-US/downloads.html
    # - Extract this to /usr/local/src/rustc-X.XX.X
    # - cargo install racer
    # > deoplete.nvim
    # - :UpdateRemotePlugins
    print('<<< [ok] neovim & vim')

def git():
    print('>>> git')
    if not shutil.which('git'):
        printf('Error[git] >> sudo apt install git -y')
        return
    os.system('ln -sf  ~/.dotfiles/config/git/.gitconfig ~/')
    print('<<< [ok] git')

def tmux():
    print('>>> tmux')
    if not shutil.which('tmux'):
        printf('Error[tmux] >> sudo apt install tmux -y')
        return
    if not shutil.which('tmux-mem-cpu-load'):
        printf('Error[tmux] >> See https://github.com/thewtex/tmux-mem-cpu-load#installation')
        return
    if "Darwin" in platform.platform():
        os.system('ln -sf ~/.dotfiles/config/tmux/.tmux.osx.conf ~/.tmux.conf')
    else:
        os.system('ln -sf ~/.dotfiles/config/tmux/.tmux.conf ~/.tmux.conf')
    os.system('cp -rf ~/.dotfiles/config/tmux/.tmux-powerline ~/.tmux-powerline')
    if not shutil.which('acpid'):
        os.system('ln -sf ~/.dotfiles/config/tmux/default_desktop.sh ~/.tmux-powerline/themes/default.sh')
    else:
        os.system('ln -sf ~/.dotfiles/config/tmux/default_laptop.sh ~/.tmux-powerline/themes/default.sh')
    os.system('ln -sf ~/.dotfiles/config/tmux/tmux_mem_cpu_load.sh ~/.tmux-powerline/segments/tmux_mem_cpu_load.sh')
    if shutil.which('acpid'):
        os.system('ln -sf ~/.dotfiles/config/tmux/weather.sh ~/.tmux-powerline/segments/weather.sh')
    # Dependency
    # > OSX
    # brew install reattach-to-user-namespace
    print('<<< [ok] tmux')

def vimperator():
    print('>>> vimperator')
    os.system('ln -sf ~/.dotfiles/config/vimperator/.vimperatorrc ~/.vimperatorrc')
    os.system('ln -nsf ~/.dotfiles/config/vimperator/.vimperator ~/.vimperator')
    print('<<< [ok] vimperator')

def fish():
    print('>>> fish')
    if not shutil.which('fish'):
        print('Error[fish] >> sudo apt install fish -y')
        return
    os.system('ln -nsf ~/.dotfiles/config/fish/config.fish ~/.config/fish/config.fish')
    # Dependency
    # > fisherman
    # curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
    # - fisher install omf/theme-bobthefish
    # - fisher install nvm
    print('<<< [ok] fish')

def nyaovim():
    print('>>> nyaovim')
    if not shutil.which('fish'):
        print('Error[nyaovim] >> npm install -g nyaovim')
        return
    os.system('ln -nsf ~/.dotfiles/config/nyaovim//nyaovimrc.html ~/.config/nyaovim/nyaovimrc.html')
    print('<<< [ok] nyaovim')

if __name__ == '__main__':
    version = platform.python_version_tuple()
    if version[0] == '2':
        print('Only python3!')
        sys.exit(1)
    neovim()
    git()
    tmux()
    vimperator()
    fish()
    nyaovim()
