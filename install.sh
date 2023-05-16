#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# fugitive
git clone https://github.com/tpope/vim-fugitive.git -b v3.7 ~/.vim/bundle/vim-fugitive

# Link .vimrc
ln -fsv ${SCRIPT_DIR}/.vimrc $HOME/.vimrc
