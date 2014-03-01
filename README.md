vim-wmj
=======

personal vim settings for c/cpp projects

#Currently included plugins:
* NerdTree
* Tagbar
* ctrlp.vim
* bufexplorer
* grep.vim
* color scheme: molokai, solarized
* vim-airline
* vim-multiple-cursors
* vim-gitgutter
* syntastic
* YouCompleteMe or OmniCppComplete

#Installation
1. Install vundle to manage all the plugins accomplished with git. The instruction is "git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle", (see it if windows https://github.com/gmarik/vundle/wiki/Vundle-for-Windows)
2. (Optional) [Install vim7.4+ with python support][1].
3. (Optional) To enable 256 colors (for molokai color scheme). Please add "export TERM=xterm-256color" in your .bashrc or corresponding config file. For solarized color scheme, please refer to [this page][2].
4. Open vim and type ":BundleInstall"
5. "cd ~" and "ln -s /path/to/vim-wmj/repo/.vimrc"
6. (Optional) "cd ~/.vim" and "ln -s /path/to/vim-wmj/repo/syntax" and "ln -s /path/to/vim-wmj/repo/tagfiles"
7. YCM completer will only be enabled on vim7.4+ with python support. Otherwise, OmniCppComplete will be used. To enable YCM completer, please call "./install.sh --clang-completer" in "~/.vim/bundle/YouCompleteMe/" (for more detail, see https://github.com/Valloric/YouCompleteMe).

[1]: https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source
[2]: https://github.com/altercation/vim-colors-solarized
