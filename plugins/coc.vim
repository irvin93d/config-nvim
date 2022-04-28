Plug 'neoclide/coc.nvim', {'branch': 'release'}

let g:coc_global_extensions = [
  \ 'coc-css',
  \ 'coc-eslint',
  \ 'coc-html',
  \ 'coc-json',
  \ 'coc-prettier',
  \ 'coc-tsserver',
  \ 'coc-svelte'
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

" TODO: Move keybindings to javascript specific thingie
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nnoremap <silent> <Leader>dk :call <SID>show_documentation()<CR>
nnoremap <silent> <Leader>dd :CocDiagnostics<CR>
nnoremap <silent> <Leader>ds :<C-u>CocList -I symbols<cr>
nmap <Leader>dF  <Plug>(coc-codeaction)
nnoremap <silent> <Leader>df :<C-u>CocFix<cr>
"nmap <leader>df  <Plug>(coc-fix-current)
nmap <leader>dr <Plug>(coc-rename)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

