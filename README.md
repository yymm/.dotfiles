- fish
  - fisherman
- tmux
  - tmux-powerline
- neovim/vim8
- nyaovim
- git
- vimperator

```
$ sudo apt-get install git fish tmux
$ sudo apt-get install software-properties-common
$ sudo add-apt-repository ppa:neovim-ppa/unstable
$ sudo apt-get update
$ sudo apt-get install neovim
$ sudo apt-get install python-dev python-pip python3-dev python3-pip
$ pip2 install --user --upgrade neovim
$ pip3 install --user --upgrade neovim
```

# Dependency

## fish

- fish
  - fisherman
    - nvm
    - omf/theme-bobthefish

```
$ curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
$ fisher install nvm
$ curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash
$ fisher install omf/theme-bobthefish
```

## vim

- neovim/vim8
  - rust
  - local eslint

[Downloads · The Rust Programming Language](https://www.rust-lang.org/en-US/downloads.html "Downloads · The Rust Programming Language")からRustのソースコードを入手して"/usr/local/src"に配置。

(注: vimの設定とパスを合わせる必要あり)

```
$ curl -sSf https://static.rust-lang.org/rustup.sh | sh
$ cargo install racer
```

# tmux

- tmux
  - thewtex/tmux-cpu-mem-load
    - cmake

```
$ sudo apt install cmake
$ cd Downloads
$ git clone https://github.com/thewtex/tmux-mem-cpu-load.git
$ cd tmux-mem-cpu-load
$ cmake .
$ make
$ sudo make install
```
