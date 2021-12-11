let g:plug_callbacks = []
call plug#begin('~/.config/nvim/plugged')

  source $HOME/.config/nvim/plugins/coc.vim
  source $HOME/.config/nvim/plugins/fzf.vim
  source $HOME/.config/nvim/plugins/lightline.vim
  source $HOME/.config/nvim/plugins/material.vim
  source $HOME/.config/nvim/plugins/nerdtree.vim

  Plug 'airblade/vim-gitgutter'
  Plug 'leafgarland/typescript-vim', {'for': ['typescript', 'typescript.tsx']}
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'scrooloose/nerdcommenter'
  Plug 'tpope/vim-fugitive'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }


call plug#end()
for Cb in g:plug_callbacks
  try
    call Cb()
  catch
    echom 'Encountered errors when executing ' . string(Cb) . ', run :PlugInstall'
  endtry
endfor
