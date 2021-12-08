Target: Ubuntu, Mac, Linux Server(Ubuntu, CentOS, Fedora, etc...)

# Start
1. Install packages and tools
2. Add config/git/.gitconfig_private and config/git/.gitcofig_work and write [user] block
3. `cd .dotfiles && python3 bin/bootstrap.py`

# Fonts
Current favorite fonts

- MesloLGS NF
  - https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k

# Tools
- git
- fish
  - fisherman
- tmux
  - tmux-powerline
    - tmux-cpu-men-load
- neovim/vim
- alacritty

# Requirements
- [fisherman](https://github.com/fisherman/fisherman)
   - `curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher` (input on fish)
   - `fisher install IlanCosman/tide@v5`
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
