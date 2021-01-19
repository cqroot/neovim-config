call plug#begin(expand('<sfile>:p:h:h').'/plugged')

" Colorscheme {
    Plug 'joshdick/onedark.vim'
    Plug 'dracula/vim'
    Plug 'morhetz/gruvbox'
" }

" " Finder {
"     Plug 'Yggdroot/LeaderF'
" " }

" Sidebar {
"     Plug 'preservim/nerdtree', { 'on': 'NERDTree' }
"     Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'liuchengxu/vista.vim'
"     Plug 'preservim/tagbar'
" }

" StatusLine {
    Plug 'glepnir/spaceline.vim'

    function! g:BuffetSetCustomColors()
        hi! BuffetCurrentBuffer    gui=NONE guibg=#88c0d0 guifg=#282a36
        hi! BuffetActiveBuffer     gui=NONE guibg=#bd93f9 guifg=#282a36
        hi! BuffetBuffer           gui=NONE guibg=#282c34 guifg=#b48ead
        hi! BuffetModCurrentBuffer gui=NONE guibg=#8be9fd guifg=#282a36
        hi! BuffetModActiveBuffer  gui=NONE guibg=#ffb86c guifg=#282a36
        hi! BuffetModBuffer        gui=NONE guibg=#ff5555 guifg=#282a36
        hi! BuffetTrunc            gui=NONE guibg=#bd93f9 guifg=#282a36
        hi! BuffetTab              gui=NONE guibg=#bd93f9 guifg=#282a36
    endfunction

    Plug 'bagrat/vim-buffet'
" }

" Completion-Coc {
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
" }

" Completion-ncm2 {
"     Plug 'ncm2/ncm2'
"     Plug 'roxma/nvim-yarp'

"     Plug 'ncm2/ncm2-bufword'
"     Plug 'ncm2/ncm2-path'
"     Plug 'ncm2/ncm2-jedi'
"     Plug 'ncm2/ncm2-vim' | Plug 'Shougo/neco-vim'
"     Plug 'ncm2/ncm2-go'

"     Plug 'ncm2/ncm2-ultisnips'
"     Plug 'SirVer/ultisnips'
"     Plug 'honza/vim-snippets'
" }

" Git {
    Plug 'tpope/vim-fugitive'
    if has('nvim') || has('patch-8.0.902')
        Plug 'mhinz/vim-signify'
    else
        Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
    endif
" }

" Linter {
    " Plug 'dense-analysis/ale'
    " let g:ale_linters = {'python': ['pylint', 'pycodestyle']}
" }

" Other {
"     Plug 'vim-airline/vim-airline'
    Plug 'preservim/nerdcommenter'

    Plug 'Yggdroot/indentLine'
    autocmd FileType markdown let g:indentLine_enabled=0

    Plug 'ryanoasis/vim-devicons'
    Plug 'sheerun/vim-polyglot'
    " Plug 'ap/vim-css-color'

    Plug 'rbgrouleff/bclose.vim'
    Plug 'francoiscabrol/ranger.vim'
    " let g:ranger_map_keys = 0

    Plug 'voldikss/vim-translator'
    nmap <silent> <Leader>w <Plug>TranslateW
    vmap <silent> <Leader>w <Plug>TranslateWV

    Plug 'cqroot/vim-rsync'

"     Plug 'skywind3000/vim-quickui'

"     Plug 'ludovicchabant/vim-gutentags'
" }

call plug#end()