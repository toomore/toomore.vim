let g:ale_completion_enabled = 0
let g:ale_completion_autoimport = 1
let g:airline#extensions#ale#enabled = 1

" Write this in your vimrc file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
"
" " You can disable this option too
" " if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0
"
" let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_fix_on_save = 1
let g:ale_lint_on_save = 1

" let b:ale_linters = ['flake8', 'pylint']
" let b:ale_fixers = ['autopep8', 'yapf']
let g:ale_linters = {'python': ['pylint'], 'html': [], '*': []}
let g:ale_fixers = {'python': ['autopep8', 'black', 'isort'], 'html': [], '*': ['remove_trailing_lines', 'trim_whitespace']}
let g:ale_python_autopep8_options = '--verbose'
