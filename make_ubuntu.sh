#!/bin/bash
cp ~/.vim/toomore.vim/vimrc.ubuntu ~/.vimrc
vim +PluginInstall +qall
cp ~/.vim/toomore.vim/plugin/ ~/.vim/plugin/
