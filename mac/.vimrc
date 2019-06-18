" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'Lokaltog/powerline-fonts'
Plug 'Lokaltog/vim-easymotion'
Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'ap/vim-css-color'
Plug 'davidhalter/jedi-vim'
Plug 'fatih/molokai'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'guns/xterm-color-table.vim'
Plug 'hdima/python-syntax'
Plug 'jelera/vim-javascript-syntax'
Plug 'jstemmer/gotags'
Plug 'majutsushi/tagbar'
Plug 'msanders/snipmate.vim'
Plug 'mdempsky/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plug 'othree/html5-syntax.vim'
Plug 'othree/html5.vim'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'tpope/vim-fugitive'
Plug 'wavded/vim-stylus'

Plug 'bling/vim-airline'
Plug 'scrooloose/syntastic'

" Initialize plugin system
call plug#end()
