" Golang
syntax enable  
filetype plugin on  
set number  
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:go_disable_autoinstall = 1

au BufRead,BufNewFile *.go set filetype=go

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

let g:go_gocode_bin="/Users/toomore/.vim-go/gocode"
let g:go_goimports_bin="/Users/toomore/.vim-go/goimports"
let g:go_godef_bin="/Users/toomore/.vim-go/godef"
let g:go_oracle_bin="/Users/toomore/.vim-go/oracle"
let g:go_golint_bin="/Users/toomore/.vim-go/golint"
let g:go_errcheck_bin="/Users/toomore/.vim-go/errcheck"

nmap <F8> :TagbarToggle<CR>
colorscheme molokai_toomore
