let g:plug_callbacks = []
call plug#begin('~/.config/nvim/plugged')

  source $HOME/.config/nvim/plugins/coc.vim
  source $HOME/.config/nvim/plugins/fzf.vim
  source $HOME/.config/nvim/plugins/lightline.vim
  source $HOME/.config/nvim/plugins/material.vim
  source $HOME/.config/nvim/plugins/nerdtree.vim
  source $HOME/.config/nvim/plugins/git.vim

  Plug 'leafgarland/typescript-vim', {'for': ['typescript', 'typescript.tsx']}
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'scrooloose/nerdcommenter'
  Plug 'fladson/vim-kitty'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
  Plug 'jparise/vim-graphql'

call plug#end()

for Cb in g:plug_callbacks
  try
    call Cb()
  catch
    echom 'Encountered errors when executing ' . string(Cb) . ', run :PlugInstall'
  endtry
endfor
