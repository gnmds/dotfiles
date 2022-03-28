
" ╔═══╗╔═══╗╔══╗ ╔═══╗╔╗   
" ║╔═╗║║╔═╗║║╔╗║ ║╔══╝║║   
" ║║ ╚╝║║ ║║║╚╝╚╗║╚══╗║║        init.vim by Gabriel a.k.a Gabel (github.com/gabellstapler)
" ║║╔═╗║╚═╝║║╔═╗║║╔══╝║║ ╔╗
" ║╚╩═║║╔═╗║║╚═╝║║╚══╗║╚═╝║
" ╚═══╝╚╝ ╚╝╚═══╝╚═══╝╚═══╝

" MISCELLANEOUS SETTINGS ------------------------------------------------------------ {{{ 

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number
set relativenumber

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" }}}

" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin()

    Plug 'mhinz/vim-startify'
    Plug 'preservim/nerdtree'
    Plug 'vim-syntastic/syntastic'
    Plug 'airblade/vim-gitgutter'
    Plug 'jiangmiao/auto-pairs'
    Plug 'arcticicestudio/nord-vim'
    Plug 'vim-airline/vim-airline'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'ryanoasis/vim-devicons'

call plug#end()

" load color scheme after vim-plug
colorscheme nord 

" }}}

" MAPPINGS --------------------------------------------------------------- {{{

inoremap jj <esc>

" Make new lines without enter insert mode
nnoremap o o<esc>
nnoremap O O<esc>

" Enter command mode with space bar
nnoremap <space> :

" }}}

" VIMSCRIPT -------------------------------------------------------------- {{{

augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" NERDTree
"
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" }}}

" AIRLINE -------------------------------------------------------------- {{{

" Powerline look
let g:airline_powerline_fonts = 1

" }}}
