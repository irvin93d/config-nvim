" ALE
let g:go_fmt_command = "goimports"
let g:ale_fix_on_save = 1
let g:ale_fixers = {
 \ 'javascript': ['eslint'],
 \ 'typescript': ['eslint']
 \ }

let g:SuperTabDefaultCompletionType = "context"

" Deoplete
let g:deoplete#enable_at_startup = 1

let g:go_auto_type_info = 1

let g:ale_haskell_ghc_options = "-fno-code -v0 -g -package -g HUnit -g -package -g tasty -g -package -g mtl"
let g:hdevtools_options = "-g -package -g HUnit -g -package -g tasty -g -package -g mtl"

" Other settings

let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'

