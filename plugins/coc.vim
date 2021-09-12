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
