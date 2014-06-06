" .vimrc File
" Maintained by: DanPhyxius
"

" make sure vim history works
set viminfo+=! 
" open and maximize the split below
map <C-J> <C-W>j<C-W>_ 
" open and maximize the split above
map <C-K> <C-W>k<C-W>_ 
" reduces splits to a single line 
set wmh=0 

" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure

"Execute Pathogen for Plugin Autoload
execute pathogen#infect()

" Enable syntax highlighting
syntax on
filetype plugin indent on

" Highlight current line
set cursorline

" Make tabs as wide as two spaces
set tabstop=2

" Enable line numbers
set number

" Show “invisible” characters
" set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
" set list

" Highlight searches
set hlsearch

" Ignore case of searches
set ignorecase

" Highlight dynamically as pattern is typed
set incsearch

" Always show status line
set laststatus=2

" Respect modeline in files
set modeline
set modelines=4

" Enable mouse in all modes
set mouse=a

" Disable error bells
set noerrorbells

" Don’t reset cursor to start of line when moving around.
set nostartofline

" Show the cursor position
set ruler

" Don’t show the intro message when starting Vim
set shortmess=atI

" Show the current mode
set showmode

" Show the filename in the window titlebar
set title

" Show the (partial) command as it’s being typed
set showcmd

" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Strip trailing whitespace (,ss)
function! StripWhitespace()
        let save_cursor = getpos(".")
        let old_query = getreg('/')
        :%s/\s\+$//e
        call setpos('.', save_cursor)
        call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

"Set Initial Command on Startup
"autocmd vimenter * ConqueTermVSplit vagrant ssh 
"autocmd vimenter * ConqueTermSplit bash

" Automatic commands
if has("autocmd")
        " Enable file type detection
        filetype on
        " Treat .json files as .js
        autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
endif

" Autoload for NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
autocmd vimenter * NERDTree

"Set Initial directory for NERDTree
cd ~/Desktop/Development/shinradev/web/www
map <F2> :NERDTreeToggle<CR>
" open Nerd Tree in folder of file in active buffer
map <Leader>nt :NERDTree %:p:h<CR>
let g:NERDTreeMouseMode=2



set nocompatible              " be iMproved, required
" filetype off                  " required

" set the runtime path to include Vundle and initialize, you have to install Vundle.vim in ~/.vim/bundle/ first
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Bundle '2072/vim-syntax-for-PHP.git'


" Enable PHP Syntax
let php_sql_query = 1
let php_htmlInStrings = 1
let php_baselib = 1
let php_asp_tags = 1
let php_parent_error_close = 1
let php_parent_error_open = 1
let php_oldStyle = 1
let php_folding = 0
let php_sync_method = 0

" TODO: Update MacVim for YouCompleteMe Plugin
" Bundle 'Valloric/YouCompleteMe'

" Syntastic PHP Enabled
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_aggregate_errors = 1

" Colorscheme Pack
Bundle 'flazz/vim-colorschemes'

" Powerline Bar Install
Bundle 'bling/vim-airline'

" Make Vim more useful
set nocompatible
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
" Set color scheme!¬
set background=dark
set t_Co=256
"colorscheme molokai
"colorscheme Monokai
colorscheme codeschool
set transparency=2
let g:rehash256 = 1
highlight ColorColumn ctermbg=7
highlight ColorColumn guibg=Gray
set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Change mapleader
let mapleader=","
" Don’t add empty newlines at the end of files
set binary
set noeol
" Centralize backups, swapfiles and undo history
" set backupdir=~/.vim/backups
" set directory=~/.vim/swaps
" if exists("&undodir")
"         set undodir=~/.vim/undo
" endif

"Remove RH Scrollbar
if has ("gui_running")
  set guioptions-=R  "remove right-hand scroll Bar
  set guioptions-=r  "remove right-hand scroll Bar
  set guioptions-=l  "remove right-hand scroll Bar
  set guioptions-=L  "remove right-hand scroll bar
endif

"Better line wrapping 
set wrap
set textwidth=79
set formatoptions=qrn1

"Prefer a slightly higher line height
set linespace=3

"Hide MacVim toolbar by default
set go-=T

"Set font type and size. Depends on the resolution. Larger screens, prefer h20
"set guifont=Menlo:h12

"Save old file when switching to new one
set autowrite
"Font and Theme alternative for MacVim
"set guifont=Monaco:h12
" colorscheme navajo-night

"Stop Vim making back up files
set nobackup
set noswapfile

" Source the vimrc file after saving it. This way, you don't have to reload Vim to see the changes.
if has("autocmd")
 augroup myvimrchooks
  au!
  autocmd bufwritepost .vimrc source ~/.vimrc
 augroup END
endif

"Be quicker - replace : with a space in Vim Editor
nmap <space> :

" NeoComplete Enable Option
let g:neocomplete#enable_at_startup = 1

" Autoclose Plugin Disable Comment Option
let g:autoclose_vim_commentmode = 1

" PHP Complete Plugin
Bundle 'shawncplus/phpcomplete.vim'

let g:phpcomplete_relax_static_constraint = 1
let g:phpcomplete_complete_for_unknown_classes = 1
let g:phpcomplete_search_tags_for_variables = 1
let g:phpcomplete_parse_docblock_comments = 1


" using Source Code Pro
" set anti enc=utf-8
"set guifont=Source\ Code\ Pro\ 13

" New themes for MacVim 
Bundle "yearofmoo/Vim-Darkmate"

" Set ConqueTerm Options
let g:ConqueTerm_Color = 1

" Indentation
set expandtab
set shiftwidth=2
set softtabstop=2

set nowrap

" WindowSwap Plugin
Bundle 'wesQ3/vim-windowswap'

" Remapping WindowSwap
let g:windowswap_map_keys = 0 "prevent default bindings
nnoremap <silent> <leader>jk :call WindowSwap#MarkWindowSwap()<CR>
nnoremap <silent> <leader>jl :call WindowSwap#DoWindowSwap()<CR>

" Mini Buffer Explorer Configuration
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 