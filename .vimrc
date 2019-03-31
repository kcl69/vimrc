" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|


" vim-plug
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'dracula/vim', {'as':'dracula'}
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-surround'
Plug 'Valloric/YouCompleteMe'

call plug#end()


set nu
set ai
set cursorline
hi CursorLine cterm=bold ctermfg=Green ctermbg=None
hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=None
color dracula
set tabstop=4
set expandtab
set shiftwidth=4
set mouse=a
set history=100
set incsearch
set relativenumber
set t_Co=256
filetype indent on

let g:rainbow_active = 1

" lightline
let g:lightline = {
    \ 'colorscheme': 'dracula'
\}
set laststatus=2
set noshowmode 

" YouCompleteMe
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
if system('uname')=~'Darwin'
    let g:ycm_server_python_interpreter = '/usr/local/bin/python2'
endif

let g:ycm_filetype_whitelist = {
            \ "c": 1,
            \ "cpp": 1,
            \ "python": 1,
            \ "sh": 1,
            \ }

" Key Mapping
inoremap ( ()<Esc>i
inoremap ) <right>
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap [ []<Esc>i
inoremap ] <right>
inoremap {<CR> {<CR>}<Esc>ko
inoremap {{ {}<ESC>i

map <C-n> :NERDTreeToggle<CR>
