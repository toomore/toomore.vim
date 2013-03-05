" \t 會以 4個空格代替
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

set number
set cursorline

syntax on

" specific file type
autocmd BufNewFile,BufRead *.mako setlocal filetype=mako
autocmd FileType python setlocal foldmethod=indent nosmartindent
autocmd BufNewFile,BufRead */nginx/* setlocal filetype=nginx 
