#!/usr/bin/env python3

# for centos
# - neovim
# - vim
# - tmux
# - git

# ------------------------------------------------------------------------------
# neovim

def neovim():
    print('>>> neovim & vim')
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
    if not shutil.which('tmux'):
        printf('Error[tmux] >> sudo apt install tmux -y')
        return
    if not shutil.which('tmux-mem-cpu-load'):
        printf('Error[tmux] >> See https://github.com/thewtex/tmux-mem-cpu-load#installation')
        return
    os.system('ln -sf ~/.dotfiles/config/tmux/.tmux.cui.conf ~/.tmux.conf')
    os.system('cp -rf ~/.dotfiles/config/tmux/.tmux-powerline ~/.tmux-powerline')
    os.system('ln -sf ~/.dotfiles/config/tmux/default_cui.sh ~/.tmux-powerline/themes/default.sh')
    os.system('ln -sf ~/.dotfiles/config/tmux/tmux_mem_cpu_load.sh ~/.tmux-powerline/segments/tmux_mem_cpu_load.sh')
    print('<<< [ok] tmux')

# ------------------------------------------------------------------------------
# git

def git():
    print('>>> git')
    if not shutil.which('git'):
        printf('Error[git] >> sudo apt install git -y')
        return
    os.system('ln -sf  ~/.dotfiles/config/git/.gitconfig ~/')
    print('<<< [ok] git')
