Plug 'itchyny/lightline.vim'

let g:lightline = {
            \ 'colorscheme': 'material_vim',
            \ 'active': {
            \     'left': [
            \         [ 'mode', 'paste' ],
            \         [ 'gitbranch', 'readonly', 'relativepath', 'modified' ]
            \     ]
            \ },
            \ 'component_function': {
            \         'gitbranch': 'fugitive#head'
            \     },
            \ }
