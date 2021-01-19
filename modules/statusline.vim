if index(g:plugs_order, 'spaceline.vim') >= 0
    let g:spaceline_colorscheme = 'nord'
    let g:spaceline_seperate_style = 'arrow'
    let g:spaceline_git_branch_icon = ''
endif

if index(g:plugs_order, 'vim-buffet') >= 0
    let g:buffet_tab_icon = ""
    let g:buffet_powerline_separators = 1
endif
