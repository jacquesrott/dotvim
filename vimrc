set nocompatible

execute pathogen#infect()

colorscheme jaqk

syntax on
filetype indent plugin on

scriptencoding utf-8

set hlsearch
set modelines=5
set smartcase
set number
set showmatch
set matchpairs=(:),{:},[:]
set splitbelow
set splitright
set scrolloff=3
set backspace=indent,eol,start
set showcmd
let mapleader = ","
set title

set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
set modeline
set nofoldenable

set backup
set undodir=~/.vim/undo

set backupdir=~/.vim/backup
set directory=~/.vim/backup

set mouse=a

autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

noremap L $
noremap H ^

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

let g:pymode = 1
let g:pymode_indent = 0
let g:pymode_options = 0
let g:pymode_folding = 0
let g:pymode_rope = 0
let g:pymode_lint = 0

let g:jedi#auto_initialization = 1
let g:jedi#popup_on_dot = 0
let g:jedi#completions_enabled = 1
let g:jedi#popup_select_first = 0
let g:jedi#completions_command = "<C-n>"
let g:jedi#smart_auto_mappings = 0
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#show_call_signatures = 0

let g:goyo_width = 120
noremap <C-g> :Goyo<CR>

let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_theme= "bubblegum"
let g:airline_extensions = ['tabline', 'whitespace']

let g:syntastic_python_checkers = ['flake8']

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END
let g:pencil#joinspaces = 0
let g:airline_section_x = '%{PencilMode()}'
