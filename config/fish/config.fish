if test -f /etc/lsb-release
  set -g theme_color_scheme zenburn
end

if type -q nvim
  set -x XDG_CONFIG_HOME $HOME/.config
end

set -x GOPATH $HOME/Documents/Go

if test -d $HOME/.cargo
  set -x PATH $HOME/.cargo/bin $PATH
  set -x RUST_SRC_PATH /usr/local/src/rust/src
end

if test -d $HOME/miniconda3
  set -x PATH $HOME/miniconda3/bin $PATH
  source (conda info --root)/etc/fish/conf.d/conda.fish
end

if test -d /opt/intel
  bass source /opt/intel/bin/iccvars.sh intel64
end
