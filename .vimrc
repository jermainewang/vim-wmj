"vundle begin
set nocompatible " be iMproved
filetype off  "required!

if has('win32') || has('win64')
	set rtp^=~/.vim/
	set rtp+=~/.vim/vimfiles/bundle/vundle/
	call vundle#rc('$HOME/.vim/vimfiles/bundle')
else
	" Usual quickstart instructions
	set rtp+=~/.vim/bundle/vundle/
	call vundle#rc()
endif

" let Vundle manage plugins
" required!
Bundle 'gmarik/vundle'

" vim-scripts.org repos
Bundle 'The-NERD-tree'
Bundle 'Tagbar'
Bundle 'ctrlp.vim'
Bundle 'bufexplorer.zip'
Bundle 'grep.vim'
" Github repos
Bundle 'tomasr/molokai'
Bundle 'sjl/badwolf'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'altercation/vim-colors-solarized'
"Bundle 'airblade/vim-gitgutter'
"Bundle 'scrooloose/syntastic'
Bundle 'embear/vim-localvimrc'
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'rdnetto/YCM-Generator'
Bundle 'CoderCookE/vim-chatgpt'

filetype plugin indent on     " required!
" vundle end

" personal setting
set nu           " line number
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set cursorline   " cursor line
" hi cursorline ctermbg=darkred ctermfg=white
set mouse=nv     " enable mouse action in normal/visual mode
set hidden       " allow buffer switch without save
set backspace=indent,eol,start  " enable nature backspace in insert mode
set colorcolumn=100   " maximum line length
syntax on		 " turn on syntax highlight
autocmd BufNewFile,BufRead *.kky set syntax=tex  " Special syntax highlighting for kokoyi program

" Font for GUI
if has('gui_running')
	set guifont=Bitstream\ Vera\ Sans\ Mono\ 12
	":h11:cANSI
	set background=dark
	colorscheme solarized
else
	set background=dark
	colorscheme molokai
endif

" For search highlight
set hlsearch
noremap <silent> <Space> :noh<Bar>:echo<CR>

let mapleader=","

" For quick window navigation
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

" For quick buffer switching
map gt :bn<CR>
map gT :bp<CR>
map gd :bd<CR>

" Quick close all window
map <leader>qq :qall<CR>

" For quick replace
map <leader>s :%s/\(<c-r>=expand("<cword>")<cr>\)/

" For C++ completion plugin
if v:version <= 703 || !(has('python') || has('python3'))
	" For omnicomplete
	Bundle 'OmniCppComplete'
	let OmniCpp_NamespaceSearch = 1
	let OmniCpp_GlobalScopeSearch = 1
	let OmniCpp_ShowScopeInAbbr = 1
	let OmniCpp_ShowPrototypeInAbbr = 1
	let OmniCpp_ShowAccess = 1
	let OmniCpp_MayCompleteDot = 1
	let OmniCpp_MayCompleteArrow = 1
	let OmniCpp_MayCompleteScope = 1
	let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
	" Do not show preview window
	autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
	autocmd InsertLeave * if pumvisible() == 0|pclose|endif
else
  Bundle 'Valloric/YouCompleteMe'
	"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
	let g:ycm_confirm_extra_conf = 0
	let g:ycm_autoclose_preview_window_after_completion = 1
	let g:ycm_autoclose_preview_window_after_insertion = 1
	noremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
endif

" For NERDTree plugin
"autocmd vimenter * NERDTree
map <leader>t :NERDTreeToggle<CR>
"let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1

" For Tagbar plugin
noremap <silent> <F9> :TagbarToggle<CR>

" For BufExplorer shortcut key
noremap <silent> <F8> :BufExplorer<CR>

" For MiniBufExplorer
"let g:miniBufExplorerAutoUpdate = 1
"let g:miniBufExplVSplit = 20   " column width in chars
"let g:miniBufExplUseSingleClick = 1
"let g:miniBufExplMapWindowNavVim = 1
" let g:miniBufExplMapAltVimSwitchBufs = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
" hot key for toggle minibufexplorer
"noremap <leader>m :TMiniBufExplorer<CR>
"noremap <C-Left>  :MBEbn<CR>
"noremap <C-Right> :MBEbp<CR>

" For ctags
set tags+=~/.vim/tagfiles/stl_tags
map <F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+ialS --extra=+q .<CR> <CR>

" For CtrlP Plugin
"let g:ctrlp_working_path_mode=1
let g:ctrlp_by_filename=1
let g:ctrlp_custom_ignore={
	\ 'dir': '\.git$\|\.hg$\|\.svn$\|build$\|deps$\|lib$\|release$\|debug$',
	\}

" For vim-airline
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_theme='simple'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail_improved'
let g:airline#extensions#whitespace#enabled = 0
let g:airline_mode_map = {
      \ '__' : '-',
      \ 'n'  : 'N',
      \ 'i'  : 'I',
      \ 'R'  : 'R',
      \ 'c'  : 'C',
      \ 'v'  : 'V',
      \ 'V'  : 'V',
      \ '' : 'V',
      \ 's'  : 'S',
      \ 'S'  : 'S',
      \ '' : 'S',
      \ }

" For gitgutter
"noremap <leader>g :GitGutterSignsToggle<CR>
"let g:gitgutter_signs = 0

" For localvimrc
let g:localvimrc_ask = 1

" For molokai
let g:molokai_original = 1

" For tagbar
let g:tagbar_autoclose = 1

" For FastFold
Bundle 'Konfekt/FastFold'
nmap zuz <Plug>(FastFoldUpdate)
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']
let g:tex_fold_enabled=1

" For ChatGPT
let g:chat_gpt_max_tokens=2000
let g:chat_gpt_model='gpt-4'
let g:chat_gpt_session_mode=1
let g:chat_gpt_temperature = 0.3
let g:chat_gpt_lang = 'English'
