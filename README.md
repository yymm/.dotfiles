Target: Ubuntu, Mac, Linux Server(Ubuntu, CentOS, Fedora, etc...)

# Tools
- git
- fish
  - fisherman
- tmux
  - tmux-powerline
    - tmux-cpu-men-load
- neovim/vim
- nyaovim

# Requirements
- [fisherman](https://github.com/fisherman/fisherman)
   - `curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher` (input on fish)
   - `fisher omf/theme-bobthefish edc/bass nvm`
- [tmux-powerline](https://github.com/erikw/tmux-powerline)
  - `git clone https://github.com/erikw/tmux-powerline.git ~/.tmux-powerline`
- [tmux-men-cpu-load](https://github.com/thewtex/tmux-mem-cpu-load) (require: cmake)
```
$ git clone https://github.com/thewtex/tmux-mem-cpu-load.git
$ cd tmux-mem-cpu-load
$ cmake .
$ make
$ sudo make install
```
