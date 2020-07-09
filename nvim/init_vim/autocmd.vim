augroup clear
  autocmd!
augroup END

augroup init
  autocmd BufEnter * if expand("%:p:h") !~ '^/tmp' | silent! lcd %:p:h | endif
  autocmd BufEnter * set number
augroup END
