if index(g:plugs_order, 'vista.vim') >= 0
    autocmd bufenter * if (winnr('$') == 1 && &filetype =~# 'vista') | q | endif
    let g:vista_echo_cursor_strategy = 'floating_win'
endif

if index(g:plugs_order, 'spaceline.vim') >= 0
    autocmd bufenter * if (winnr('$') == 1 && &filetype =~# 'coc-explorer') | q | endif
endif
