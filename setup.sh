#! /bin/sh

#
# Requires neovim and curl
#

: "export"
{
  export NVIM="$HOME/.config/nvim"
  export DEIN="$HOME/.cache/dein"
  SCRIPT_DIR=$(cd $(dirname $0); pwd)
}

function symlink() {
  ln -sf $1 $2
}

: "link"
{

  symlink $SCRIPT_DIR/dein/dein.toml $NVIM/dein.toml
  symlink $SCRIPT_DIR/dein/dein_lazy.toml $NVIM/dein_lazy.toml
  symlink $SCRIPT_DIR/dein/denite.vim $NVIM/denite.vim
  symlink $SCRIPT_DIR/dein/lightline.vim $NVIM/lightline.vim
  symlink $SCRIPT_DIR/dein/coc-settings.json $NVIM/coc-setings.json
  symlink $SCRIPT_DIR/nvim/init.vim $NVIM/init.vim

}

: "post stuff"
{
  nvim -c "UpdateRemotePlugin"
