" === Set up plug handler ===

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" === Set leader so it can be used by plugins ===
let mapleader=" "

" === Set up plugins ===
source $HOME/.config/nvim/plugins/init.vim

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
