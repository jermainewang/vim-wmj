"vundle begin
set nocompatible " be iMproved
filetype off  "required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage plugins
" required! 
Bundle 'gmarik/vundle'

" vim-scripts.org repos
Bundle 'OmniCppComplete'
Bundle 'The-NERD-tree'
Bundle 'taglist.vim'
Bundle 'Tagbar'
Bundle 'ctrlp.vim'
Bundle 'minibufexpl.vim'
Bundle 'bufexplorer.zip'
Bundle 'tomasr/molokai'
Bundle 'Lokaltog/powerline'

filetype plugin indent on     " required! 
" vundle end

" personal setting
set cindent      " c indent
set nu           " line number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set cursorline   " cursor line
" hi cursorline ctermbg=darkred ctermfg=white
set mouse=nv     " enable mouse action in normal/visual mode
set hidden       " allow buffer switch without save

" colorscheme desert
colorscheme molokai 
" let g:rehash256=1

" For search highlight
set hlsearch
noremap <silent> <Space> :noh<Bar>:echo<CR>

let mapleader=","

" For quick window navigation
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR> 
" nnoremap <C-h> <C-W>h
" nnoremap <C-j> <C-W>j
" nnoremap <C-k> <C-W>k
" nnoremap <C-l> <C-W>l

" Quick close all window
map <leader>qq :qall<CR>

" For quick replace
map <leader>s :%s/\(<c-r>=expand("<cword>")<cr>\)/

" For omnicomplete
let OmniCpp_NamespaceSearch = 1      
let OmniCpp_GlobalScopeSearch = 1      
let OmniCpp_ShowScopeInAbbr = 1
let OmniCpp_ShowPrototypeInAbbr = 0 " don't show prototype
let OmniCpp_ShowAccess = 1      
let OmniCpp_MayCompleteDot = 1
let OmniCpp_MayCompleteArrow = 1      
let OmniCpp_MayCompleteScope = 1      
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

" For NERDTree plugin
autocmd vimenter * NERDTree
map <leader>t :NERDTreeToggle<CR>
"let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1
" Used by winmanager
" let g:NERDTree_title="[NERDTree]"
" function! NERDTree_Start()
"     exe 'NERDTree'
" endfunction
" 
" function! NERDTree_IsValid()
"     return 1
" endfunction

" For Tagbar plugin
noremap <silent> <F9> :TagbarToggle<CR>

" For TagList plugin
" filetype plugin on
noremap <silent> <F10> :TlistToggle<CR>
let Tlist_Use_Right_Window=1
let Tlist_WinWidth=40
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close=1

" For BufExplorer shortcut key
noremap <silent> <F11> :BufExplorer<CR>

" For MiniBufExplorer
let g:miniBufExplorerAutoUpdate = 1 
"let g:miniBufExplVSplit = 20   " column width in chars
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplMapWindowNavVim = 1
" let g:miniBufExplMapAltVimSwitchBufs = 1
let g:miniBufExplMapCTabSwitchBufs = 1
" hot key for toggle minibufexplorer
noremap <leader>m :TMiniBufExplorer<CR>
noremap <C-Left>  :MBEbn<CR>
noremap <C-Right> :MBEbp<CR>
" Used by winmanager
" let g:MiniBufExplorer_title="[MiniBufExplorer]"
" function! MiniBufExplorer_Start()
" 	exe 'MiniBufExplorer'
" endfunction
" 
" function! MiniBufExplorer_IsValid()
" 	return 1
" endfunction

" For ctags
set tags+=~/.vim/tagfiles/stl_tags
map <F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+ialS --extra=+q .<CR> <CR>

" For CtrlP Plugin
"let g:ctrlp_working_path_mode=1
let g:ctrlp_by_filename=1
let g:ctrlp_custom_ignore={
	\ 'dir': '\.git$\|\.hg$\|\.svn$\|build$\|deps$\|lib$',
	\}

" For powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
let g:Powerline_symbols = 'fancy'

" For windows mangaer
" let g:winManagerWindowLayout = 'NERDTree|BufExplorer'
" nmap <silent> <F8> :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR><CR>

"let g:clang_auto_select=1
"let g:clang_complete_auto=1
"let g:clang_complete_copen=1
"let g:clang_hl_errors=1
"let g:clang_complete_macros=1
"let g:clang_complete_patterns=0
"let g:clang_use_library=1
"let g:clang_library_path="/usr/lib/"
"let g:clang_user_options=""
"let g:clang_auto_user_options="path, .clang_complete"
