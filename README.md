# Setup
Target: Ubuntu, Mac

1. Install "Pre-Requirements"
2. Add config/git/.gitconfig_private and config/git/.gitcofig_work and write [user] block
3. `cd .dotfiles && python3 bin/bootstrap.py`

# Pre-Requirements

## Install git and gh, tmux, neovim, starship

- git, gh, tmux, neovim: install from package manager(apt or brew)
- [starship](https://starship.rs/ja-JP/): install instructions on the site

```
$ gh auth login
$ gh auth setup-git # https://cli.github.com/manual/gh_auth_setup-git
```

## Install tmux-powerline, tmux-apu-mem-load

### Install [tmux-powerline](https://github.com/erikw/tmux-powerline)

```
git clone https://github.com/erikw/tmux-powerline.git ~/.tmux-powerline
```

### Install [tmux-men-cpu-load](https://github.com/thewtex/tmux-mem-cpu-load) (require: cmake)

```
$ git clone https://github.com/thewtex/tmux-mem-cpu-load.git
$ cd tmux-mem-cpu-load
$ cmake .
$ make
$ sudo make install
```


## Install python3 and nodejs

- nodejs -> install [mise](https://github.com/jdx/mise) and get latest lts
- python -> install system default (apt or brew)

# Fonts
Current favorite fonts

- MesloLGS NF
  - https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k
- PremolJP
  - https://github.com/yuru7/PlemolJP
