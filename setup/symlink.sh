#/bin/sh

SOURCE=$(cd $(dirname $0); pwd)

ln -sf $SOURCE/nvim/init.vim ~/.config/nvim/
ln -nsf $SOURCE/nvim/plugin_settings/ ~/.config/nvim/plugin_settings
ln -nsf $SOURCE/nvim/dein_toml/ ~/.config/nvim/dein_toml
