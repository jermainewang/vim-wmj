
set cindent
set nu
set tabstop=4
set softtabstop=4
set shiftwidth=4
colorscheme desert

" For search highlight
set hlsearch
noremap <silent> <Space> :noh<Bar>:echo<CR>

let mapleader=","

" For quick winddow navigation
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR> 

" For quick replace
map <leader>s :%s/\(<c-r>=expand("<cword>")<cr>\)/

" For NERDTree plugin
autocmd vimenter * NERDTree
map <leader>t :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1

" For BufExplorer shortcut key
noremap <silent> <F11> :BufExplorer<CR>

" For TagList plugin
filetype plugin on
noremap <silent> <F10> :TlistToggle<CR>
let Tlist_Use_Right_Window=1
let Tlist_WinWidth=40
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close=1

" For Tagbar plugin
noremap <silent> <F9> :TagbarToggle<CR>

" For CtrlP Plugin
"let g:ctrlp_working_path_mode=1
let g:ctrlp_by_filename=1
let g:ctrlp_custom_ignore={
	\ 'dir': '\.git$\|\.hg$\|\.svn$\|build$\|deps$\|lib$',
	\}

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
