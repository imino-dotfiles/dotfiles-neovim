nmap <Space> [denite]
nmap <Space>p [deniteProject]
nmap <silent> [denite]b :<C-u>Denite buffer<CR>
nmap <silent> [denite]g :<C-u>Denite grep<CR>
nmap <silent> [denite]m :<C-u>Denite file_mru<CR> <silent> <C-u><C-y> :<C-u>Denite neoyank<CR>
nmap <silent> [denite]f :<C-u>Denite file/rec<CR>
nmap <silent> [denite]d :<C-u>Denite directory_rec<CR>

nmap <silent> [deniteProject]b :<C-u>DeniteProject buffer<CR>
nmap <silent> [deniteProject]g :<C-u>DeniteProject grep<CR>
nmap <silent> [deniteProject]m :<C-u>DeniteProject file_mru<CR> <silent> <C-u><C-y> :<C-u>Denite neoyank<CR>
nmap <silent> [deniteProject]f :<C-u>DeniteProject file/rec<CR>
nmap <silent> [deniteProject]d :<C-u>DeniteProject directory_rec<CR>

if executable('rg')
    call denite#custom#var('file/rec', 'command', ['rg', '--files', '--glob', '!.git'])
    call denite#custom#var('file_rec', 'command', ['rg', '--files', '--glob', '!.git'])
    call denite#custom#var('grep', 'command', ['rg', '--threads', '1'])
    call denite#custom#var('grep', 'recursive_opts', [])
    call denite#custom#var('grep', 'final_opts', [])
    call denite#custom#var('grep', 'separator', ['--'])
    call denite#custom#var('grep', 'default_opts', ['--vimgrep', '--no-heading'])
endif

call denite#custom#map('insert', "<C-n>", '<denite:move_to_next_line>')
call denite#custom#map('insert', "<C-p>", '<denite:move_to_previous_line>')
call denite#custom#map('insert', "<C-t>", '<denite:do_action:tabopen>')
call denite#custom#map('insert', "<C-v>", '<denite:do_action:vsplit>')
call denite#custom#map('insert', "<C-h>", '<denite:do_action:split>')

call denite#custom#filter('matcher_ignore_globs', 'ignore_globs', [
            \ '.git/', 'build/', '__pycache__/',
            \ 'images/', '*.o', '*.make', '*.min.*',
            \ 'img/', 'fonts/', '*~', '*.exe', '*.bak',
            \ '.DS_Store', '*.pyc', '*.class', 'tags'
            \ ])
