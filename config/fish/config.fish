#
# Configs
#

if test (uname -s) = Darwin
  set -x LANG ja_JP.UTF-8
  set -x PATH $HOME/.local/bin $PATH
end

if test -f /etc/lsb-release
  set -x PATH $HOME/.local/bin $PATH
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
  set -x PATH $GOPATH/bin $PATH
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
  set -x PATH "/usr/local/opt/avr-gcc@7/bin" $PATH
end

if test -f /etc/lsb-release
  if test -d $HOME/.nodenv
    set -x PATH $HOME/.nodenv/bin $PATH
    status --is-interactive; and source (nodenv init -|psub)
  end
else
  if type -q nodenv
    eval (nodenv init - | source)
  end
end

if test -d $HOME/.yarn
  set -x PATH $HOME/.yarn/bin PATH
end

alias dco="docker-compose"
