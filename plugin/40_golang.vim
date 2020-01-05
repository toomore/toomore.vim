" Golang
syntax enable  
filetype plugin on
set number  
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1
" Tell Neosnippet about the other snippets
" let g:neosnippet#snippets_directory='~/.vim/bundle/neosnippet-snippets/neosnippets'

" " syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_aggregate_errors = 1
let g:syntastic_go_checkers = ['go', 'golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

" vim-go
let g:go_auto_type_info = 1
" let g:go_disable_autoinstall = 1
let g:go_fmt_command = "goimports"
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
" let g:go_list_type = "quickfix"
" let g:go_metalinter_autosave = 1
" let g:go_metalinter_enabled = ['golint', 'vet', 'errcheck']
" let g:go_metalinter_autosave_enabled = ['golint', 'vet', 'errcheck']

autocmd BufRead,BufNewFile *.go set filetype=go
autocmd BufRead *.go nested TagbarOpen

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

" let g:go_gocode_bin="/Users/toomore/app/go_path/bin/gocode"
" let g:go_goimports_bin="/Users/toomore/app/go_path/bin/goimports"
" let g:go_godef_bin="/Users/toomore/app/go_path/bin/godef"
" let g:go_oracle_bin="/Users/toomore/app/go_path/bin/oracle"
" let g:go_guru_bin="/Users/toomore/app/go_path/bin/guru"
" let g:go_golint_bin="/Users/toomore/app/go_path/bin/golint"
" let g:go_errcheck_bin="/Users/toomore/app/go_path/bin/errcheck"

nmap <F8> :TagbarToggle<CR>
colorscheme molokai

au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

" au FileType go nmap <Leader>ds <Plug>(go-def-split)
" au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
" au FileType go nmap <Leader>dt <Plug>(go-def-tab)
