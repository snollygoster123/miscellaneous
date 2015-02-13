set nocompatible		" Improves backspace, undo etc. over vi
set backspace=indent,eol,start	" Unfuck backspace
set whichwrap=b,s,<,>,[,]	" Line break traversal

" Vundle setup, used to manage plugins from vim by typing :BundleList etc
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
Bundle 'gmarik/vundle'
" Put other bundles below here

" Powerline - bar at bottom of vim
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

" Git plugin: use G[...] e.g. Gcommit etc.
Bundle 'tpope/vim-fugitive'

" Nerdtree file browser
Bundle 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<CR>	" Use F2 key to toggle Nerdtree

" Add python functionality: lint, code completion, doc lookup, etc.
" use :help python-mode for more info
Bundle 'klen/python-mode'

filetype plugin indent on	" Enable plugins
syntax on			" Syntax colouring
set tabstop=4			" Set tab width
set shiftwidth=4		" Set shift width

set number			" Show line numbers
set undolevels=1000		" Number of undos to remember

set t_Co=256			" Use 256 colours

set hlsearch			" Highlight search results
set incsearch			" Use incremental search

colorscheme railscasts		" Use railscast colour scheme; see:
				" https://github.com/jpo/vim-railscasts-theme

let g:is_bash = 1		" Fix syntaxing for shell scripts

" Aliases
map gn :tabnew<CR>
map g<space> :tabs<CR>


set ttyfast			" Fast terminal
set magic			" Enable regex magic

set scrolloff=3

set showcmd			" Show the command being typed
set showfulltag			" Show full completion tags
set showmode			" Always show the mode

" Toggle spell checking with ,s
let mapleader = ","
nmap <silent> <leader>s :set spell!<CR>

" Set language
set spelllang=en_gb
