" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|

autocmd BufWritePost $MYVIMRC source $MYVIMRC

call plug#begin('~/.vim/plugged')

" colorscheme
Plug 'dracula/vim', {'as':'dracula'}
Plug 'connorholyday/vim-snazzy'
Plug 'KeitaNakamura/neodark.vim'
Plug 'crusoexia/vim-monokai'
Plug 'acarapetis/vim-colors-github'
Plug 'rakr/vim-one'
Plug 'altercation/vim-colors-solarized'
Plug 'itchyny/lightline.vim'

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mbbill/undotree'
Plug 'majutsushi/tagbar'
Plug 'mattn/emmet-vim'
Plug 'luochen1990/rainbow'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'
Plug 'airblade/vim-gitgutter'

call plug#end()


set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set encoding=utf-8
set nu
set ai
set cursorline
hi CursorLine cterm=bold ctermfg=Green ctermbg=None
hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=None
color snazzy
set tabstop=4
set expandtab
set shiftwidth=4
set scrolloff=5
set mouse=a
set history=100
set incsearch
set hlsearch
set ignorecase
set smartcase
set wildmenu
set relativenumber
set splitright
set splitbelow
set t_Co=256
set backspace=indent,eol,start

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

let g:rainbow_active = 1

" lightline
let g:lightline = {
    \ 'colorscheme': 'dracula'
\}
set laststatus=2
set noshowmode 


let g:ycm_filetype_whitelist = {
            \ "c": 1,
            \ "cpp": 1,
            \ "python": 1,
            \ "sh": 1,
            \ }

" for paste
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"


inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
    set pastetoggle=<Esc>[201~
    set paste
    return ""
endfunction

" Key Mapping (Insert mode)
inoremap ( ()<Esc>i
inoremap ) <right>
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap [ []<Esc>i
inoremap ] <right>
inoremap {<CR> {<CR>}<Esc>ko
inoremap {{ {}<ESC>i

map <C-n>   :NERDTreeToggle<CR>
map <C-m>   :TagbarToggle<CR>
map <up>    :res +5<CR>
map <down>  :res -5<CR>
map <left>  :vertical resize-5<CR>
map <right> :vertical resize+5<CR>
map <C-w><down>  <C-w>t<C-w>K
map <C-w><right> <C-w>t<C-w>H
