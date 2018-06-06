set -g theme_color_scheme zenburn

if type -q nvim
  set -x XDG_CONFIG_HOME $HOME/.config
end

if type -q go
  set -x GOPATH $HOME/Documents/Go
end

if type -q rustc
  set -x PATH $HOME/.cargo/bin $PATH
  set -x RUST_SRC_PATH /usr/local/src/rust/src
end

if type -q conda
  set -x PATH $HOME/miniconda3/bin $PATH
  source (conda info --root)/etc/fish/conf.d/conda.fish
end
