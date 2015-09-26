set nocompatible		" be iMproved, required
filetype off 			"required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'  "+
Plugin 'scrooloose/nerdtree' "+
Plugin 'tomtom/tcomment_vim'
Plugin 'pangloss/vim-javascript'
Plugin 'digitaltoad/vim-jade'
Plugin 'tpope/vim-surround'
Plugin 'wavded/vim-stylus'
Plugin 'wincent/command-t'
Plugin 'kien/ctrlp.vim'
Plugin 'nono/vim-handlebars'
Plugin 'rking/ag.vim'
Plugin 'ervandew/supertab'
Plugin 'bling/vim-airline' "+
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-commentary'
Plugin 'scrooloose/syntastic'
Plugin 'mattn/emmet-vim'

call vundle#end()            " required


filetype plugin indent on    " required

syntax on
color xoria256

set clipboard=unnamed
set nu
set ic
set backspace=indent,eol,start
set number
set ruler
set expandtab
set noswapfile
set autowrite
set splitbelow
set splitright
set encoding=utf-8

" Store lots of :cmdline history
set history=1000
set undolevels=1000

set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom

set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default

set nowrap      "dont wrap lines
set linebreak   "wrap lines at convenient points

" Indent settings
set shiftwidth=2
set softtabstop=2
set autoindent

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
highlight ColorColumn ctermbg=darkgrey guibg=orange
match OverLength /\%81v.*/


" Change the map leader from \ to ,
let mapleader=","

" Save with sudo
noremap <Leader>w :w !sudo tee % > /dev/null

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Open NERDTree with ,.
map <Leader>n :NERDTreeToggle<CR>
"map <C-n> :NERDTreeToggle<CR>
" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=0
" show hidden files in NERDTree
let NERDTreeShowHidden=1
" expand to the path of the file in the current buffer
nmap <silent> <Leader>y :NERDTreeFind<cr>
set modifiable

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

set laststatus=2
set timeoutlen=400

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"


" Easier split navigation
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


" buffers navigation
nnoremap <C-b> :bp<CR>
nnoremap <C-m> :bn<CR>
nnoremap <C-n> :bp<CR>:bd #<CR>

