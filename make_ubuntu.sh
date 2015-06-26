#!/bin/bash
cp ~/.vim/toomore.vim/vimrc.ubuntu ~/.vimrc
mkdir -p ~/.vim/bundle
cd  ~/.vim/bundle
git clone --depth 1 https://github.com/gmarik/Vundle.vim.git
git clone --depth 1 https://github.com/tpope/vim-fugitive.git
git clone --depth 1 https://github.com/Lokaltog/vim-easymotion.git
git clone --depth 1 https://github.com/Shougo/neocomplete.vim.git
git clone --depth 1 https://github.com/ap/vim-css-color.git
git clone --depth 1 https://github.com/bling/vim-airline.git
git clone --depth 1 https://github.com/chase/vim-ansible-yaml.git
git clone --depth 1 https://github.com/ekalinin/Dockerfile.vim.git
git clone --depth 1 https://github.com/fatih/molokai.git
git clone --depth 1 https://github.com/fatih/vim-go.git
git clone --depth 1 https://github.com/jelera/vim-javascript-syntax.git
git clone --depth 1 https://github.com/jstemmer/gotags.git
git clone --depth 1 https://github.com/lepture/vim-jinja.git
git clone --depth 1 https://github.com/majutsushi/tagbar.git
git clone --depth 1 https://github.com/othree/html5-syntax.vim.git
git clone --depth 1 https://github.com/othree/html5.vim.git
git clone --depth 1 https://github.com/scrooloose/syntastic.git
git clone --depth 1 https://github.com/wavded/vim-stylus.git
git clone --depth 1 https://github.com/vim-scripts/L9.git
git clone --depth 1 https://github.com/vim-scripts/AutoComplPop.git
git clone --depth 1 https://github.com/vim-scripts/mako.vim.git
git clone --depth 1 https://github.com/vim-scripts/nginx.vim.git
git clone --depth 1 https://github.com/vim-scripts/python.vim.git
git clone --depth 1 https://github.com/vim-scripts/python_match.vim.git
vim +PluginInstall +qall
vim +GoInstallBinaries +qall
cp -r ~/.vim/toomore.vim/plugin ~/.vim/
curl https://raw.githubusercontent.com/fatih/molokai/master/colors/molokai.vim --create-dirs -o ~/.vim/colors/molokai_toomore.vim
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/git-prompt.sh
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/git-completion.bash
