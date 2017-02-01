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
set tw=82
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
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

" Window Splits
set splitbelow
set splitright

" Tab Management
nnoremap <C-t> :tabnew<CR>
inoremap <C-t> <Esc>:tabnew<CR>
nnoremap td :tabclose<CR>


" Remap jj/jk to escape in insert mode!
inoremap jj <Esc>
inoremap jk <Esc>

" Code Folding
set fdm=syntax

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" all vundle#begin('~/.vim/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins for UI
Plugin 'crusoexia/vim-monokai'
Plugin 'vim-airline/vim-airline'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
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
Plugin 'mxw/vim-jsx'
Plugin 'vim-ruby/vim-ruby'
Plugin 'edsono/vim-matchit'
Plugin 'tpope/vim-rails'
Plugin 'digitaltoad/vim-pug'
Plugin 'nikvdp/ejs-syntax'
Plugin 'rust-lang/rust.vim'

let mapleader="\<space>"
set timeout timeoutlen=1500
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_confirm_extra_conf = 0
set completeopt-=preview
" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin on
filetype plugin indent on    " required


au FileType xhtml,html,htm,php,xml setlocal tabstop=2
au FileType xhtml,html,htm,php,xml setlocal shiftwidth=2
au FileType xhtml,html,htm,php,xml setlocal expandtab      " (et) expand tabs to spaces (use :retab to redo entire file)
au FileType xhtml,html,htm,php,xml setlocal softtabstop=2   " (sts) makes spaces feel like tabs (like deleting)
au FileType c,h,java,js setlocal mps+==:;                   " allow the match pairs operation (%) to work with '=' and ';'
au FileType c,h setlocal cindent                            " enable the intelligent cindent (cin) feature for the following files
au FileType js setlocal tabstop=2 expandtab
au FileType java,js setlocal smartindent                    " enable the smartindenting (si) feature for the following files
au FileType txt setlocal fo+=tn
autocmd BufNewFile,BufRead *.json set ft=javascript

let g:jsx_ext_required = 0

" Syntax Highlighting
syntax enable
set background=dark
colorscheme monokai
"color dracula

" Airline Settings
set laststatus=2

let g:airline#extensions#branch#enabled = 1
let g:airline_powerline_fonts = 1
set guifont=Liberation\ Mono\ for\ Powerline

let g:Powerline_symbols = 'fancy'
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
"set term=screen-256color
set termguicolors
set termencoding=utf-8

" Ctrl P Settings
"let g:ctrlp_working_path_mode = 'w'
"let g:ctrlp_user_command = 'ag %s -l -i --nocolor -g "'
"let g:ackprg = 'ag --vimgrep'
"let g:ctrlp_match_window = 'results:20'"
let g:ctrlp_by_filename = 1
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$|node_modules/.|vendor/.|platforms/.|plugins/.',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" Remap jj/jk to escape in insert mode!
inoremap jj <Esc>
inoremap jk <Esc>


" Netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize=15

" Lexplore
map <Leader>l :Lexplore<CR>

" NerdTree Configurations
map <C-n> :NERDTreeToggle<CR>
map <Leader>t :NERDTreeToggle<CR>

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

" Tab Indent Guides
"set ts=2 sw=2 et
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=darkgrey   ctermbg=236
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgrey   ctermbg=237
let indent_guides_color_change_percent = 10

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-j>"

" Enables relative numbers.
function! EnableRelativeNumbers()
  set number
  set relativenumber
endfunc

" Disables relative numbers.
function! DisableRelativeNumbers()
  set number
  set norelativenumber
endfunc

" NumberToggle toggles between relative and absolute line numbers
function! NumberToggle()
  if(&relativenumber == 1)
    call DisableRelativeNumbers()
    let g:relativemode = 0
  else
    call EnableRelativeNumbers()
    let g:relativemode = 1
  endif
endfunc

" Generate JS ctags
function! JSTags()
  execute ":! es-ctags -R ."
endfunc

" Generate PHP ctags
function! PHPTags()
  execute ":! php ./phpctags -R ."
endfunc

nnoremap <Leader>j :call JSTags()<CR>
nnoremap <Leader>p :call PHPTags()<CR>
nnoremap <Leader>n :call NumberToggle()<CR>
map <Leader>h :nohl<CR>

tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
