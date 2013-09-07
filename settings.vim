"
" .vimrc - Basic settings
set nocompatible
set modeline
set modelines=2
set foldopen-=search

" viminfo - jump to previous editing line
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" Set tab settings
set tabstop=2         " Set the tabstop to 4 spaces
set shiftwidth=2      " Shiftwidth should match tabstop
set softtabstop=2
set expandtab         " Convert tabs to <tabstop> number of spaces

" Wrap settings
set wrap              " Wrap lines longer than the window
set wrapscan          " wrap to the top of the file while searching
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" Other important settings
set encoding=utf-8
set scrolloff=3
set autoindent        " Let vim help you with your code indention
set showmode          " Tell you if you're in insert mode
" you hit <enter> (r) or o/O (o) in a block comment.
"show current uncompleted command
set showcmd

" Autocompletion like bash
set wildmenu
set wildmode=list:longest

set visualbell
set cursorline
set ttyfast           " smoother output, we're not on a 1200 dialup :)
set ruler             " Show the cursor position all the time
set showmatch         " Show matching [] () {} etc...
set smartindent       " Let vim help you with your code indention
set nohlsearch        " Don't highlight strings you're searching for
set formatoptions+=ro " Automatically insert the comment character when
set backspace=indent,eol,start       " makes backspace work like you expect
set laststatus=2
set norelativenumber
set undofile

" Color and syntax stuff
set t_Co=256
colorscheme ir_black
syntax on

let mapleader = ","    " Change leader key to ,

" Search/Moving changes
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %


" Trying to break the habit of using arrow keys...
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" Disable help key!
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Automatically save when focus is lost
"au FocusLost * :wa

" Print Settings
set printoptions=paper:letter

"set mouse=a

set tags=./tags;/

"highlight word while searching
set incsearch

" suffixes that get lower priority when doing tab completion for filenames.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

" quickly edit files often edited
map ,v :e ~/.vimrc<CR>
map ,m :e ~/.muttrc<CR>
map ,b :e ~/.bash_profile<CR>
map ,c :e ~/.zshrc<CR>
map ,tc :!ctags -l c `find . -name "*.[chp]"`
map ,q :q<CR>
map ,L  1G/Last update:\s*/e+1<CR>CYDATE<ESC>
map ,,L 1G/Last change:\s*/e+1<CR>CYDATE<ESC>

" Change current directory to files directory
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

" Map jj to esc key
inoremap jj <ESC> 

" Leader macros
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Split window settings
" Map ,ev to open vimrc in split
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
" Open new split with ,w
nnoremap <leader>w <C-w>v<C-w>l

" Movement around splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

