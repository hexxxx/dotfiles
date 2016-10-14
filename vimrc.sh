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
cat <<EOT >> ~/.vimrc
syntax enable
colorscheme monokai

" call with   : call Header(80, 'foo')
function Header(width, word)
    let a:inserted_word = ' ' . a:word . ' '
    let a:word_width = strlen(a:inserted_word)
    let a:length_before = (a:width - a:word_width) / 2
    let a:hashes_before = repeat('#', a:length_before)
    let a:hashes_after = repeat('#', a:width - (a:word_width + a:length_before))
    let a:hash_line = repeat('#', a:width)
    let a:word_line = a:hashes_before . a:inserted_word . a:hashes_after

    :put =a:hash_line
    :put =a:word_line
    :put =a:hash_line
endfunction

EOT
echo "Script complete"
