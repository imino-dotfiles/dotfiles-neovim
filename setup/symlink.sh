#/bin/sh

SOURCE=$(cd $(dirname $0); pwd)

ln -sf $SOURCE/nvim/init.vim ~/.config/nvim/
ln -sf $SOURCE/nvim/ginit.vim ~/.config/nvim/
ln -sf $SOURCE/nvim/coc-settings.json ~/.config/nvim/
ln -nsf $SOURCE/nvim/plugin_settings/ ~/.config/nvim/plugin_settings
ln -nsf $SOURCE/nvim/user-functions/ ~/.config/nvim/user-functions
ln -nsf $SOURCE/nvim/dein_toml/ ~/.config/nvim/dein_toml
ln -nsf $SOURCE/nvim/init_vim/ ~/.config/nvim/init_vim
