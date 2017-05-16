if &compatible
  set nocompatible
endif
filetype on
" append to runtime path
set rtp+=/usr/share/vim/vimfiles
" initialize dein, plugins are installed to this directory
call dein#begin(expand('~/.cache/dein'))
" add packages here, e.g:
call dein#add('Valloric/YouCompleteMe')
call dein#add('Shougo/deoplete.nvim', { 'do': ':UpRemotePlugins' })
call dein#add('Shougo/denite.nvim')
call dein#add('Shougo/vimfiler')
call dein#add('scrooloose/nerdtree')
call dein#add('Yggdroot/indentLine')
call dein#add('airblade/vim-gitgutter')

" exit dein
call dein#end()
" auto-install missing packages on startup
if dein#check_install()
  call dein#install()
endif
filetype plugin on

"End dein Scripts-------------------------

 set pastetoggle=<F2>
 set clipboard=unnamed
 let mapleader = ";"
 vnoremap < <gv  " better indentation
 vnoremap > >gv  " better indentation

 " Theme

if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=0
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

 colorscheme ryuuko
 set background=dark
 
 " editor settings
 set tabstop=4
 set shiftwidth=4
 set shiftround
 set expandtab
 set noswapfile
 set list
 set wrap
 set linebreak
 set relativenumber
 set number
 set undofile
 set undodir=~/.config/nvim/temp/undodir
 set completeopt-=preview
 let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

 " search settings
 set hlsearch
 set ignorecase
 set smartcase

 " Ultisnips
 let g:UltiSnipsExpandTrigger="<c-a>"
 let g:UltiSnipsJumpForwardTrigger="<c-b>"
 let g:UltiSnipsJumpBackwardTrigger="<c-z>"

 " Vimfiler
 let g:vimfiler_as_default_explorer = 1

 " Unmaps the arrow keys
 map <Up>    <nop>
 map <Down>  <nop>
 map <Left>  <nop>
 map <Right> <nop>

 " javacomplete2
 autocmd FileType java setlocal omnifunc=javacomplete#Complete

 " guess imports
 nmap <F5> <Plug>(JavaComplete-Imports-Add)
 imap <F5> <Plug>(JavaComplete-Imports-Add)

set statusline=%=%P\ %f\ %m
set fillchars=vert:\ ,stl:\ ,stlnc:\ 
set laststatus=1
set noshowmode

 "" deoplete
 let g:deoplete#enable_at_startup = 1
