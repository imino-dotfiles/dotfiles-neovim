let g:lightline = {
      \ 'colorscheme': 'iceberg',
      \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
      \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
      \ }
let g:lightline.inactive = {
    \ 'left': [ [ 'filename' ] ],
    \ 'right': [ [ 'lineinfo' ],
    \            [ 'percent' ] , ['denite'] ]}
let g:lightline.component_function = {}
let g:lightline.component_function['filename'] = 'LLfilename'
let g:lightline.component_function['denite'] = 'LLDenite'

function! LLfilename() abort
    if &filetype isnot# 'denite'
    " g:lightline.component['filename'] = '%t'  と同義
        return expand('%:t')
    else
        return ''
    endif
endfunction

" deniteを開いたときだけ表示する
 function! LLDenite() abort
     if &filetype isnot# 'denite'
         return ''
     else
         return s:denite_statusline()
     endif
 endfunction

 function! s:denite_statusline() abort
    let p =denite#get_status('path')
    " 飾りをはずす
    let p = substitute(p, '\(\[\|\]\)', '', 'g')
    " パスをホームディレクトリからの相対パスに変換する
    let p = fnamemodify(p,':~')
    " パスが長い時は強引に切り詰める
    if strlen(p) > 40
        let p = '.../' . fnamemodify(p,':h:h:t'). '/'
            \ . fnamemodify(p,':h:t'). '/'. fnamemodify(p, ':t')
    endif
    let path =  '[' . p . ']'
    let buf = 'buffer:' . denite#get_status('buffer_name')
    let source = denite#get_status('sources')
    return  buf . ' ' . source . ' ' . path
 endfunction

let g:lightline.active = {
    \ 'left': [ [ 'mode', 'paste' ],
    \           [ 'readonly', 'filename', 'modified' ] ],
    \ 'right': [ [ 'lineinfo' ],
    \            [ 'percent' ],
    \            ['filestatus', 'denite']] }

let g:lightline.component_function['filestatus'] = 'LLfilestatus'
" 
function! LLfilestatus() abort
    if &filetype isnot# 'denite'
        let fenc = &fenc!=#""?&fenc:&enc
        let ft = &ft!=#""?&ft:"no ft"
        return &ff . ' | ' . ft . ' | ' . fenc
    else
        return ''
    endif
endfunction

