"let g:go_metalinter_autosave = 1
let g:go_list_type = 'locationlist'
let g:go_metalinter_command = "gometalinter --vendor ./..."
let g:go_metalinter_enabled = ['vet', 'golint', 'deadcode', 'errcheck']
let g:go_metalinter_path = "./..."

nnoremap <buffer> <silent> <F5> :GoTest<CR>
nnoremap <buffer> <silent> <F6> :GoCoverageToggle<CR>

" turn to next or previous errors, after open location list
nmap <C-j> :lnext<CR>
nmap <C-k> :lprevious<CR>

