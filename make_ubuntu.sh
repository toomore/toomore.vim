#!/bin/bash
cp ~/.vim/toomore.vim/vimrc.ubuntu ~/.vimrc
vim +PluginInstall +qall
vim +GoInstallBinaries +qall
cp -r ~/.vim/toomore.vim/plugin ~/.vim/
curl https://raw.githubusercontent.com/fatih/molokai/master/colors/molokai.vim --create-dirs -o ~/.vim/colors/molokai_toomore.vim
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/git-prompt.sh
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/git-completion.bash
