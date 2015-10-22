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

set incsearch
set history=1000
set list
set listchars=tab:▸\ ,trail:-,extends:>,precedes:<,nbsp:+,eol:¬
set complete-=i

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

noremap <Left> <nop>
noremap <Right> <nop>
noremap <Up> <nop>
noremap <Down> <nop>

if has("unix")
    let s:uname = system("uname -s")
    if s:uname == "Darwin"
        function! s:osx_copy_text()
            let old_z = @z
            normal! gv"zy
            call system('pbcopy', @z)
            let @z = old_z
        endfunction

        vnoremap <C-c> :<C-u>call s:osx_copy_text()<CR>
    endif
endif

inoremap <C-U> <C-G>u<C-U>
inoremap kj <ESC>

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
    autocmd BufRead,BufNewFile,BufEnter *.md    call pencil#init()
    autocmd BufRead,BufNewFile,BufEnter *.txt   call pencil#init()
augroup END

let g:pencil#joinspaces = 0
let g:airline_section_x = '%{PencilMode()}'

" HTML
autocmd FileType html set shiftwidth=2
autocmd FileType html set tabstop=4
autocmd FileType html set softtabstop=2
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" CSS
autocmd FileType css set shiftwidth=2
autocmd FileType css set tabstop=4
autocmd FileType css set softtabstop=2
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" Javascript
autocmd FileType javascript set shiftwidth=2
autocmd FileType javascript set tabstop=4
autocmd FileType javascript set softtabstop=2
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
