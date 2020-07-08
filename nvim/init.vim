for f in split(glob('~/.config/nvim/init_vim/*.vim'), '\n')
    execute 'source' f
endfor
