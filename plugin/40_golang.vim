" Golang
syntax enable  
filetype plugin on  
set number  
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1

" Enable snipMate compatibility feature.
" let g:neosnippet#enable_snipmate_compatibility = 1
" Tell Neosnippet about the other snippets
" let g:neosnippet#snippets_directory='~/.vim/bundle/neosnippet-snippets/neosnippets'

" " syntastic
let g:syntastic_aggregate_errors = 1
let g:syntastic_go_checkers = ['go', 'golint', 'govet', 'errcheck']

" vim-go
let g:go_disable_autoinstall = 1
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:go_highlight_string_spellcheck = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_chan_whitespace_error = 1

au BufRead,BufNewFile *.go set filetype=go
autocmd BufEnter *.go nested TagbarOpen

let g:tagbar_type_go = {  
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" let g:go_gocode_bin="/Users/toomore/.vim-go/gocode"
" let g:go_goimports_bin="/Users/toomore/.vim-go/goimports"
" let g:go_godef_bin="/Users/toomore/.vim-go/godef"
" let g:go_oracle_bin="/Users/toomore/.vim-go/oracle"
" let g:go_golint_bin="/Users/toomore/.vim-go/golint"
" let g:go_errcheck_bin="/Users/toomore/.vim-go/errcheck"

nmap <F8> :TagbarToggle<CR>
colorscheme molokai_toomore

au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
