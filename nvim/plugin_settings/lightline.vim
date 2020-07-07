let g:lightline = {
      \ 'colorscheme': 'iceberg',
      \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
      \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
      \ }

let g:lightline.inactive = {
    \ 'left': [ [ 'filename' ] ],
    \ 'right': [ [ 'lineinfo' ],
    \            [ 'percent' ] ]}

let g:lightline.active = {
    \ 'left': [ [ 'mode', 'paste' ],
    \           [ 'readonly', 'filename', 'modified' ] ],
    \ 'right': [ [ 'lineinfo' ],
    \            [ 'percent' ],
    \            ['filestatus'],
    \            ['date'] 
    \          ] }

let g:lightline.component_function = {}

let g:lightline.component_function['filename'] = 'LLfilename'

let g:lightline.component_function['filestatus'] = 'LLfilestatus'

let g:lightline.component_function['date'] = 'LLdate'

function! LLdate() abort
    while 1 > 0 
      return strftime('%T') . ' |'
      sleep 1
    endwhile
endfunction

function! LLfilestatus() abort
    let fenc = &fenc!=#""?&fenc:&enc
    let ft = &ft!=#""?&ft:"no ft"
    return &ff . ' | ' . ft . ' | ' . fenc
endfunction

function! LLfilename() abort
    return expand('%:t')
endfunction

