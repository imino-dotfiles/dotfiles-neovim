#! /bin/sh

#
# Requires neovim and curl
#

set -x

: "export" &&
{
  source ./setup/export.sh
  # export NVIM="$HOME/.config/nvim"
  # export DEIN="$HOME/.cache/dein"
  # SCRIPT_DIR=$(cd $(dirname $0); pwd)
}

: "link" &&
{
  source ./setup/symlink.sh
  # ln -sf $SCRIPT_DIR/dein/dein.toml $NVIM/dein.toml
  # ln -sf $SCRIPT_DIR/dein/dein_lazy.toml $NVIM/dein_lazy.toml
  # ln -sf $SCRIPT_DIR/dein/denite.vim $NVIM/denite.vim
  # ln -sf $SCRIPT_DIR/dein/lightline.vim $NVIM/lightline.vim
  # ln -sf $SCRIPT_DIR/dein/coc-settings.json $NVIM/coc-setings.json
  # ln -sf $SCRIPT_DIR/nvim/init.vim $NVIM/init.vim

}

: "postprocess" &&
{

  nvim -c "UpdateRemotePlugin"
  nvim -c "UpdateRemotePlugins"

}
