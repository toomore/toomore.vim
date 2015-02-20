" \t 會以 4個空格代替
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

set number
set cursorline
set colorcolumn=81

syntax on

" specific file type
autocmd BufNewFile,BufRead *.mako setlocal filetype=mako
autocmd FileType python setlocal foldmethod=indent nosmartindent
autocmd BufNewFile,BufRead */nginx/* setlocal filetype=nginx 

let python_highlight_all = 1

" vim-airline
set laststatus=2
let g:airline_powerline_fonts = 1
" enable tabline
" let g:airline#extensions#tabline#enabled = 1
" set left separator
" let g:airline#extensions#tabline#left_sep = ' '
" set left separator which are not editting
" let g:airline#extensions#tabline#left_alt_sep = '|'
" show buffer number
" let g:airline#extensions#tabline#buffer_nr_show = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'


" scrooloose/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
