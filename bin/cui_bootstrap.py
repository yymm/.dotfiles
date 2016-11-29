#!/usr/bin/env python

# for centos
# - vim(neovim)
# - tmux
# - git

import os

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

# ------------------------------------------------------------------------------
# tmux

def tmux():
    print('>>> tmux')
    os.system('ln -sf ~/.dotfiles/config/tmux/.tmux.cui.conf ~/.tmux.conf')
    os.system('cp -rf ~/.dotfiles/config/tmux/.tmux-powerline ~/.tmux-powerline')
    os.system('ln -sf ~/.dotfiles/config/tmux/default_cui.sh ~/.tmux-powerline/themes/default.sh')
    os.system('ln -sf ~/.dotfiles/config/tmux/tmux_mem_cpu_load.sh ~/.tmux-powerline/segments/tmux_mem_cpu_load.sh')
    print('<<< [ok] tmux')

# ------------------------------------------------------------------------------
# git

def git():
    print('>>> git')
    os.system('ln -sf  ~/.dotfiles/config/git/.gitconfig.cui ~/.gitconfig')
    print('<<< [ok] git')

if '__main__' == __name__:
    vim()
    tmux()
    git()
