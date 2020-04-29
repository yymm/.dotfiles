#
# Configs
#

if test (uname -s) = Darwin
  set -x LANG ja_JP.UTF-8
end

if test -f /etc/lsb-release
  set -x fish_user_paths $HOME/.local/bin $fish_user_paths
end

if test -f /etc/lsb-release
  set -g theme_color_scheme zenburn
else
  set -g theme_color_scheme zenburn # metro
  # set -g theme_color_scheme gruvbox # bobthefish
end

if type -q nvim
  set -x XDG_CONFIG_HOME $HOME/.config
end

if type -q go
  set -x GOPATH $HOME/go
  set -x fish_user_paths $GOPATH/bin $fish_user_paths
end

if test -d $HOME/.cargo
  set -x PATH $HOME/.cargo/bin $PATH
  set -x RUST_SRC_PATH (rustc --print sysroot)/lib/rustlib/src/rust/src
end

if test -d $HOME/miniconda3
  set -x PATH $HOME/miniconda3/bin $PATH
  source (conda info --root)/etc/fish/conf.d/conda.fish
end

if test -d /usr/local/opt/avr-gcc@7
  set -g fish_user_paths "/usr/local/opt/avr-gcc@7/bin" $fish_user_paths
end

if test -f /etc/lsb-release
  if test -d $HOME/.nodenv
    set -x fish_user_paths $HOME/.nodenv/bin $fish_user_paths
    status --is-interactive; and source (nodenv init -|psub)
  end
else
  if type -q nodenv
    status --is-interactive; and source (nodenv init -|psub)
  end
end

if test -d $HOME/.yarn
  set -x fish_user_paths $HOME/.yarn/bin $fish_user_paths
end

#
# Functions
#

function confirm
  while true
    read -l -P "$argv[1] [y/N] " confirm
    switch $confirm
      case Y y
        return 0
      case '' N n
        return 1
    end
  end
end

# override "cd" command
function cd --description 'check git repo and fetch, startup.sh is exist then run it'
  builtin cd $argv[1]
  #if __fish_is_git_repository
  #  if confirm "git fetch?"
  #    echo "☕ auto git fetch"
  #    git fetch origin master
  #  end
  #end
  if test -x startup.fish
    echo "🚀 run startup.fish"
    ./startup.fish
  end
  if test -x startup.sh
    echo "🚀 run startup.sh"
    ./startup.sh
  end
end

#
# Alias
#

alias dco="docker-compose"
