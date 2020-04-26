#
# Configs
#

set -Ux fish_user_paths $HOME/.local/bin $fish_user_paths

if test -f /etc/lsb-release
  set -g theme_color_scheme zenburn
end

if type -q nvim
  set -x XDG_CONFIG_HOME $HOME/.config
end

if type -q go
  set -Ux GOPATH $HOME/go
  set -Ux fish_user_paths $GOPATH/bin $fish_user_paths
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

if test -d $HOME/.yarn
  set -Ux fish_user_paths (yarn global bin) $fish_user_paths
end

if test -d $HOME/.nodenv
  set -Ux fish_user_paths $HOME/.nodenv/bin $fish_user_paths
  status --is-interactive; and source (nodenv init -|psub)
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
