""" Formatting
" On save
"autocmd! BufWritePost <buffer> :call HtmlBeautify()
" On <Leader>ef
noremap <buffer> <silent> <Leader>ef :call HtmlBeautify()<cr>
