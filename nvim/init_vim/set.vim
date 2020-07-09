let g:loaded_gzip              = 1
let g:loaded_tar               = 1
let g:loaded_tarPlugin         = 1
let g:loaded_zip               = 1
let g:loaded_zipPlugin         = 1
let g:loaded_rrhelper          = 1
let g:loaded_2html_plugin      = 1
let g:loaded_vimball           = 1
let g:loaded_vimballPlugin     = 1
let g:loaded_getscript         = 1
let g:loaded_getscriptPlugin   = 1
let g:loaded_netrw             = 0
let g:loaded_netrwPlugin       = 0
let g:loaded_netrwSettings     = 0
let g:loaded_netrwFileHandlers = 0

" Automatically set current directory to browsing directory.                                                      
let g:netrw_keepdir=0 

if has('persistent_undo')
  let s:undodir='~/.config/nvim/undo'
    if !isdirectory(s:undodir)
        call mkdir(s:undodir, 'p')
    endif
    set undodir=~/.config/nvim/undo
  set undofile                                                     
endif

set termguicolors

set noshowmode

set list listchars=tab:\▸\-
set expandtab
set tabstop=2
set pumblend=15
set winblend=30
set autochdir
set shiftwidth=2

set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp932,euc-jp

set runtimepath+=~/.config/nvim/user-functions
set clipboard+=unnamedplus
