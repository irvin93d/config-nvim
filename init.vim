" === Set up plug handler ===

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" === Set up plugins ===

let g:plug_callbacks = []

call plug#begin('~/.config/nvim/plugged')
source $HOME/.config/nvim/plugins/init.vim
call plug#end()

for Cb in g:plug_callbacks
  try
    call Cb()
  catch
    echom 'Encountered errors when executing ' . string(Cb) . ', run :PlugInstall'
  endtry
endfor


" Not really sure why we need these, but they need to be here.
if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
    set termguicolors
endif

" Some default things. Might wanna move later.
au FocusGained,BufEnter * :silent! !
set expandtab
set hidden
set list
set number
set relativenumber
set shiftwidth=4
set tabstop=4
set updatetime=400
