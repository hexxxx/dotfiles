#!/bin/bash

mkdir ~/.vim
#mkdir ~/.vim/colors
#mkdir ~/.vim/syntax
#mkdir ~/.vim/ftdetect
mkdir ~/.vim/dotfiles
cd ~/.vim/dotfiles
git clone https://github.com/sickill/vim-monokai.git
#sleep 5
git clone https://github.com/yorokobi/vim-splunk.git
#sleep 5
mv ~/.vim/dotfiles/vim-monokai/colors ~/.vim
mv ~/.vim/dotfiles/vim-splunk/ftdetect ~/.vim
mv ~/.vim/dotfiles/vim-splunk/syntax ~/.vim
touch ~/.vimrc
cat <<EOT >> .vimrc
syntax enable
colorscheme monokai
EOT
echo "Script complete"
