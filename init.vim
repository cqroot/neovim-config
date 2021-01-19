if has('unix')
    let g:python_host_skip_check=1
    let g:python_host_prog = '/usr/bin/python2'
    let g:python3_host_skip_check=1
    let g:python3_host_prog = '/usr/bin/python3'
endif

exec 'source '.expand('<sfile>:p:h').'/options/base.vim'
exec 'source '.expand('<sfile>:p:h').'/options/mapping.vim'
exec 'source '.expand('<sfile>:p:h').'/options/plugin.vim'

for s:module_script in globpath(expand('<sfile>:p:h').'/modules/', '*.vim', 0, 1)
    exec 'source '.s:module_script
endfor

silent! colorscheme onedark
highlight CursorLineNr cterm=NONE ctermbg=15 ctermfg=8 gui=NONE guibg=#5d6169 guifg=#2d3239
