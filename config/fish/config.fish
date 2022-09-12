#
# Configs
#

if test (uname -s) = Darwin
  set -x LANG ja_JP.UTF-8
  set -x PATH $HOME/.local/bin $PATH
  # bazel
  set -x PATH $HOME/bin $PATH
  # homebrew
  set -x PATH /opt/homebrew/bin $PATH
  set -x PATH /usr/local/opt/mysql-client/bin $PATH
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

if test -d /usr/local/go
  set -x PATH "/usr/local/go/bin" $PATH
end

if test -d $HOME/.cargo
  set -x PATH $HOME/.cargo/bin $PATH
  set -x RUST_SRC_PATH (rustc --print sysroot)/lib/rustlib/src/rust/src
end

if test -d $HOME/.poetry
  set -x PATH $HOME/.poetry/bin $PATH
  poetry completions fish > ~/.config/fish/completions/poetry.fish
end

if test -d $HOME/.embulk
  set -x PATH $HOME/.embulk/bin $PATH
  alias embulk="java -jar $HOME/.embulk/bin/embulk"
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
  set -x PATH $HOME/.yarn/bin $PATH
end

if type -q java
  set -x PATH /usr/local/opt/openjdk@11/bin $PATH
  set -gx CPPFLAGS "-I/usr/local/opt/openjdk@11/include"
end

# if type -q bazel
#   ln -s $HOME/.bazel/bin/bazel.fish $HOME/.config/fish/completions/bazel.fish
# end

if type -q anyenv
  status --is-interactive; and source (anyenv init -|psub)
end

alias dco="docker compose"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/yuya_yano/google-cloud-sdk/path.fish.inc' ]; . '/Users/yuya_yano/google-cloud-sdk/path.fish.inc'; end

# starship prompt
if type -q starship
  starship init fish | source
end
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
