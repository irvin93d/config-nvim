Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

command! -bang -nargs=* SearchFiles
  \ call fzf#vim#grep(
  \   'rg --glob "!{node_modules/*,.git/*}" --hidden --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('right:50%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

nnoremap <Leader><Leader> :Commands<CR>

nnoremap <Leader>fp :GitFiles<CR>
nnoremap <Leader>ff :SearchFiles!<CR>
nnoremap <Leader>fb :Buffers<CR>
nnoremap <Leader>gc :Commits<CR>

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

" This is the default option:
"   - Preview window on the right with 50% width
"   - CTRL-/ will toggle preview window.
" - Note that this array is passed as arguments to fzf#vim#with_preview function.
" - To learn more about preview window options, see `--preview-window` section of `man fzf`.
let g:fzf_preview_window = ['right:60%', 'ctrl-/']
let g:fzf_layout = { 'window': { 'width': 1, 'height': 1 } }

" Preview window on the upper side of the window with 40% height,
" hidden by default, ctrl-/ to toggle
"let g:fzf_preview_window = ['up:40%:hidden', 'ctrl-/']

