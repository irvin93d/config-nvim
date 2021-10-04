Plug 'neoclide/coc.nvim', {'branch': 'release'}

let g:coc_global_extensions = [
  \ 'coc-css',
  \ 'coc-eslint',
  \ 'coc-html',
  \ 'coc-json',
  \ 'coc-prettier',
  \ 'coc-tsserver'
  \ ]

" TODO Check for module if needed:
"if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  "let g:coc_global_extensions += ['coc-prettier']
"endif

"if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  "let g:coc_global_extensions += ['coc-eslint']
"endif


" TODO Move this to filetype file
autocmd FileType scss setl iskeyword+=@-@

" TODO: Add typescript navigation
" https://thoughtbot.com/blog/modern-typescript-and-react-development-in-vim#navigating

" TODO: Add typescript auto fix imports etc.
" https://thoughtbot.com/blog/modern-typescript-and-react-development-in-vim#performing-code-actions

" TODO: Potential performance improvement on large files.
" https://thoughtbot.com/blog/modern-typescript-and-react-development-in-vim
"autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
"autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" TODO: Show diagnostics
"https://thoughtbot.com/blog/modern-typescript-and-react-development-in-vim#tool-tip-documentation-and-diagnostics

" TODO: Move keybindings to javascript specific thingie
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nnoremap <silent> <Leader>dd :<C-u>CocList diagnostics<cr>
nnoremap <silent> <Leader>ds :<C-u>CocList -I symbols<cr>
nmap <Leader>df  <Plug>(coc-codeaction)
nmap <leader>dr <Plug>(coc-rename)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

function! ShowDocIfNoDiagnostic(timer_id)
  if (coc#float#has_float() == 0 && CocHasProvider('hover') == 1)
    silent call CocActionAsync('doHover')
  endif
endfunction

function! s:show_hover_doc()
  call timer_start(500, 'ShowDocIfNoDiagnostic')
endfunction

autocmd CursorHoldI * :call <SID>show_hover_doc()
autocmd CursorHold * :call <SID>show_hover_doc()
