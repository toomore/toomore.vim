#!/bin/bash
VIMVER="8.2.0086"

apt-get update && apt-get dist-upgrade -y && \
apt-get install -y git curl gcc tmux \
                   make ncurses-dev libtolua-dev exuberant-ctags     && \
    ln -s /usr/include/lua5.2/ /usr/include/lua                      && \
    ln -s /usr/lib/x86_64-linux-gnu/liblua5.2.so /usr/lib/liblua.so  && \

curl -L https://github.com/vim/vim/archive/v${VIMVER}.tar.gz > vim.tar.gz
tar -xvf ./vim.tar.gz
cd ./vim-${VIMVER}/

./configure --with-features=huge --enable-luainterp --enable-multibyte \
            --with-tlib=ncurses --enable-cscope                        \
            --enable-pythoninterp=yes                                  \
            --enable-python3interp=yes                                 \
            --with-python3-command=/usr/bin/python3                    \
            --enable-gui=no --without-x --prefix=/usr               && \
make VIMRUNTIMEDIR=/usr/share/vim/vim82                             && \
make install
