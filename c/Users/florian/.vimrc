" .vimrc in c:\Users\Florian\
"
" winget install "The Silver Searcher"
" git for Windows
" https://github.com/junegunn/vim-plug
"
" set rtp^=$HOME
" :scriptnames
" :command Plug
" :echo system('git --version')
" :!git --version
" :echo executable('git')
" set shell=$SHELL
"
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

nnoremap <C-F1> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
nnoremap <C-F2> :if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif<CR>

set guifont=MesloLGS_NF:h11
set lines=56 columns=103

" <Leader>
nnoremap <Space> <nop>
let mapleader = " "

".vimrc
nnoremap <Leader>ve :e $MYVIMRC<CR>
nnoremap <Leader>vr :source $MYVIMRC<CR>

nnoremap <leader>w :w<CR>
nnoremap <leader>b :buffers<CR> :buffer<Space>

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

set encoding=utf-8
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
syntax on

"---------------------
" Basic editing config
"---------------------
set shortmess+=I " disable startup message
set incsearch " incremental search (as string is being typed)
set hls " highlight search
set listchars=tab:>>,nbsp:~ " set list to see tabs and non-breakable spaces
set lbr " line break
set scrolloff=5 " show lines above and below cursor (when possible)
set noshowmode " hide mode
set laststatus=2
set backspace=indent,eol,start " allow backspacing over everything
set timeout timeoutlen=1000 ttimeoutlen=100 " fix slow O inserts
set lazyredraw " skip redrawing screen in some cases
set autochdir " automatically set current directory to directory of last opened file
set hidden " allow auto-hiding of edited buffers
set history=8192 " more history
set nojoinspaces " suppress inserting two spaces between sentences
" use 4 spaces instead of tabs during formatting
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
" smart case-sensitive search
set ignorecase
set smartcase
set noeb vb t_vb=

"Move visually selected lines up or down in various modes
nnoremap K :m .-2<CR>==
nnoremap J :m .+1<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv

" Nummern
highlight CursorLineNr ctermfg=226
set number relativenumber
set cursorline

" Buffer
nnoremap <leader>b :Buffers<CR>
nmap <leader>l :set list!<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" EOL, CR
set listchars=tab:▸\ ,eol:¬
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59 

" Zeilenumbruch
set breakindent
set showbreak=...

" Fuzzy Finder
let $FZF_DEFAULT_COMMAND = 'ag -g "" --hidden'
nnoremap <leader>o :Files<CR>

" NERDTree
map <leader>n :NERDTreeToggle<CR>

"vim.plug
call plug#begin('~/vimfiles/bundle')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'franbach/miramare'
Plug 'chriskempson/base16-vim'
Plug 'preservim/nerdcommenter'
Plug 'pprovost/vim-ps1'
" Plug 'jiangmiao/auto-pairs'

call plug#end()

colorscheme base16-ocean
