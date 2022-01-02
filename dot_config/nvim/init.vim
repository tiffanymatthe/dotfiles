" Allows switching without saving buffer
set hidden
" Word wrap
set wrap

" Plugin stuff
filetype off
syntax on
filetype plugin indent on
set modelines=0

" set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround

" Keeps 5 lines above cursor when scrolling with mouse
set scrolloff=5

" Backspace problems
set backspace=indent,eol,start
" Speed up scrolling
set ttyfast

" Status bar
set laststatus=2

" Display options
set showmode
set showcmd

" Bracket matching
set matchpairs+=<:>

" Show line number
set number

" Encoding
set encoding=utf-8

" Highlight matching search patterns
set hlsearch
" Enable incremental search
set incsearch
" Include matching uppercase words with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
set smartcase

" Store info from no more than 100 files at a time, 9999 lines of text, 100kb of data. Useful for copying large amounts of data between files.
set viminfo='100,<9999,s100

let g:airline#extensions#tabline#enabled = 1

" Enable copying out of vim
autocmd VimLeave * call system("xsel -ib", getreg('+'))


" Case insensitive search
set smartcase
set ignorecase

" Mouse
set mouse=a


" Workaround to prevent vim from breaking background color in kitty
let &t_ut=''


call plug#begin('~/.config/nvim/plugged')

"Fugitive Vim Github Wrapper
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

Plug 'joshdick/onedark.vim', { 'as': 'onedark' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'sheerun/vim-polyglot'
Plug 'lervag/vimtex'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'sirver/ultisnips'

Plug 'ctrlpvim/ctrlp.vim'


call plug#end()

let g:onedark_hide_endofbuffer=1

runtime coc.vim

color onedark

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" Spell checker
setlocal spell
set spelllang=nl,en_gb
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" Remaps
" Leader
let mapleader = " "

" Scrolling
nnoremap <S-j> <C-e>
nnoremap <S-k> <C-y>

" Switch tab
nnoremap <S-h> gT
nnoremap <S-l> gt

" Backspace
noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>

" Switch panes
map <Leader>j <C-W>j
map <Leader>k <C-W>k
map <Leader>h <C-W>h
map <Leader>l <C-W>l

" Explorer
nmap <Leader>e <Cmd>CocCommand explorer<CR>
nmap <Leader>b <Cmd>CocCommand explorer --sources=buffer+<CR>

