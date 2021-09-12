""" Formatting
" On save
autocmd! BufWritePost <buffer> :call CSSBeautify()
" On <Leader>ef
noremap <buffer> <silent> <Leader>ef :call CSSBeautify()<cr>

