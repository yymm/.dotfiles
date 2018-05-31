set -x XDG_CONFIG_HOME $HOME/.config
set -x GOPATH $HOME/Documents/Go
set -x PATH $HOME/.cargo/bin $PATH
set -x RUST_SRC_PATH /usr/local/src/rust/src
set -g theme_color_scheme zenburn
set -x PATH $HOME/miniconda3/bin $PATH
if type -q conda
  source (conda info --root)/etc/fish/conf.d/conda.fish
end
