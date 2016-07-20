" Enable copying to clipboard using
map <C-c> y:e ~/clipsongzboard<CR>P:w !pbcopy<CR><CR>:bdelete!<CR>

set nocompatible              " be iMproved, required
filetype off                  " required
set noswapfile

" Paste Settings
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" vim layout settings
set number
set ruler
set cc=80
set history=50
set hlsearch
set cul         " Highlight current line"

" Proper tabbing
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set encoding=utf-8

" Working Backspace
set backspace=indent,eol,start

" Window Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Window Splits
set splitbelow
set splitright

" Tab Management
nnoremap <C-t> :tabnew<CR>
inoremap <C-t> <Esc>:tabnew<CR>
nnoremap td  :tabclose<CR>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" all vundle#begin('~/.vim/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins for UI
Plugin 'vim-airline/vim-airline'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-fugitive'
Plugin 'flazz/vim-colorschemes'
Plugin 'justincampbell/vim-eighties'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'

" Usage Plugins
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'Lokaltog/vim-easymotion'

" Autocomplete Plugins
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Raimondi/delimitMate'

" Language Plugins
Plugin 'mattn/emmet-vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'marijnh/tern_for_vim'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'

let mapleader="\<space>"
set timeout timeoutlen=1500
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_confirm_extra_conf = 0
set completeopt-=preview
" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required


au FileType xhtml,html,htm,php,xml setlocal tabstop=2
au FileType xhtml,html,htm,php,xml setlocal shiftwidth=2
au FileType xhtml,html,htm,php,xml setlocal expandtab      " (et) expand tabs to spaces (use :retab to redo entire file)
au FileType xhtml,html,htm,php,xml setlocal softtabstop=2   " (sts) makes spaces feel like tabs (like deleting)
au FileType c,h,java,js setlocal mps+==:;                   " allow the match pairs operation (%) to work with '=' and ';'
au FileType c,h setlocal cindent                            " enable the intelligent cindent (cin) feature for the following files
au FileType java,js setlocal smartindent                    " enable the smartindenting (si) feature for the following files
au FileType txt setlocal fo+=tn

" Syntax Highlighting
syntax enable
set background=dark
colorscheme molokai

" Airline Settings
set laststatus=2

let g:airline#extensions#branch#enabled = 1
let g:airline_powerline_fonts = 1
set guifont=Liberation\ Mono\ for\ Powerline

let g:Powerline_symbols = 'fancy'
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

" Ctrl P Settings
"let g:ctrlp_working_path_mode = 'w'
"let g:ctrlp_user_command = 'ag %s -l -i --nocolor -g "'
"let g:ackprg = 'ag --vimgrep'
"let g:ctrlp_match_window = 'results:20'"

" Remap jj/jk to escape in insert mode!
inoremap jj <Esc>
inoremap jk <Esc>

" NerdTree Configurations
map <C-n> :NERDTreeToggle<CR>

"
"" EasyMotion Settings
"
"" Set default search as EasyMotion Search
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
" Set quicker EasyMotion bi-directional motion
map <Leader>f <Plug>(easymotion-s)
" " Set quicker EasyMotion motion
map <Leader>w <Plug>(easymotion-w)
map <Leader>b <Plug>(easymotion-b)


" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-j>"
