if index(g:plugs_order, 'coc.nvim') >= 0
    let g:coc_global_extensions = [
                \ 'coc-diagnostic',
                \ 'coc-python',
                \ 'coc-vimlsp',
                \ 'coc-explorer',
                \ 'coc-sh',
                \ 'coc-emmet',
                \ 'coc-html',
                \ 'coc-css',
                \ 'coc-prettier',
                \ 'coc-tsserver',
                \ 'coc-json',
                \ 'coc-eslint',
                \ 'coc-git',
                \ 'coc-highlight',
                \ 'coc-markdownlint',
                \ 'coc-stylelint',
                \ 'coc-stylelintplus',
                \ 'coc-snippets',
                \ 'coc-yaml',
                \ 'coc-vetur']

    " TextEdit might fail if hidden is not set.
    set hidden

    " Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
    " delays and poor user experience.
    set updatetime=300

    " Don't pass messages to |ins-completion-menu|.
    set shortmess+=c

    " Always show the signcolumn, otherwise it would shift the text each time
    " diagnostics appear/become resolved.
    if has("patch-8.1.1564")
        " Recently vim can merge signcolumn and number column into one
        set signcolumn=number
    else
        set signcolumn=yes
    endif

    " Use tab for trigger completion with characters ahead and navigate.
    " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
    " other plugin before putting this into your config.
    inoremap <silent><expr> <TAB>
                \ pumvisible() ? "\<C-n>" :
                \ <SID>check_back_space() ? "\<TAB>" :
                \ coc#refresh()
    inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

    function! s:check_back_space() abort
        let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~# '\s'
    endfunction

    " Use <c-space> to trigger completion.
    if has('nvim')
        inoremap <silent><expr> <c-space> coc#refresh()
    else
        inoremap <silent><expr> <c-@> coc#refresh()
    endif

    " Make <CR> auto-select the first completion item and notify coc.nvim to
    " format on enter, <cr> could be remapped by other vim plugin
    inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

    " Use K to show documentation in preview window.
    nnoremap <silent> <leader>h :call <SID>show_documentation()<CR>

    " Coc Explorer
    nnoremap <leader>e :CocCommand explorer<CR>

endif
