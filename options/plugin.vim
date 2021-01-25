call plug#begin(expand('<sfile>:p:h:h').'/plugged')

" Colorscheme {
    Plug 'joshdick/onedark.vim'
    Plug 'dracula/vim'
    Plug 'morhetz/gruvbox'
" }

" Finder {
"     Plug 'Yggdroot/LeaderF'
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
" }

" Sidebar {
    Plug 'liuchengxu/vista.vim'
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

" Fm {
    Plug 'vifm/vifm.vim'
    if has('nvim')
        Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
    else
        Plug 'Shougo/defx.nvim'
        Plug 'roxma/nvim-yarp'
        Plug 'roxma/vim-hug-neovim-rpc'
    endif
" }

" Other {
    Plug 'preservim/nerdcommenter'
    Plug 'ryanoasis/vim-devicons'
    Plug 'sheerun/vim-polyglot'
    " Plug 'ap/vim-css-color'

    Plug 'voldikss/vim-translator'
    Plug 'cqroot/vim-rsync'
    let g:vim_rsync_sync_on_save = 1

    Plug 'Yggdroot/indentLine'
    autocmd TermOpen * IndentLinesDisable
    autocmd FileType markdown let g:indentLine_enabled=0

"     Plug 'skywind3000/vim-quickui'
"     Plug 'ludovicchabant/vim-gutentags'
" }

call plug#end()
