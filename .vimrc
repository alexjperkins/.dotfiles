" @alexjperkins
" .vimrc file

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Better copy & paste
vnoremap <C-c> "+y
map <C-v> "+P
vnoremap <C-c> "*y :let @+=@*<CR>
"8: maps C-c to yank to the + register
"9: maps to paste fromthe + register
"10: linux only, allows yanking to the primary selection clipboard

" Mouse and backspace
set mouse=a
set bs=2

" Set Leader key
let mapleader = ","

" Map sort function to a key
vnoremap <Leader>s :sort<CR>

" Move code blocks with indentation
vnoremap < <gv
vnoremap > >gv

" Show whitesapce; must be inserted before colorscheme


highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()


" Color Scheme

"Enable syntax hightlighting
filetype off
filetype plugin indent on
syntax on

" Show line number & length
set number  "line no.
set tw=79   "width
set nowrap  "dont auot wrap on load
set fo-=t   "dont auot wrap when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233

" easier formatting of paragraphs using Q
vmap Q gq
nmap Q gqap

" Set tab sizes
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Make search case insenstive
set hlsearch
set incsearch
set ignorecase
set smartcase
