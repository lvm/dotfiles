"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/verb/.config/nvim/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/verb/.config/nvim')
  call dein#begin('/home/verb/.config/nvim')

  " Let dein manage dein
  " Required:
  call dein#add('/home/verb/.config/nvim/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here
  call dein#add('Valloric/YouCompleteMe')
  call dein#add('artur-shaik/vim-javacomplete2')
  call dein#add('Shougo/deoplete.nvim', { 'do': ':UpRemotePlugins' })
  call dein#add('SirVer/ultisnips')
  call dein#add('Shougo/denite.nvim')
  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/vimfiler')
  call dein#add('scrooloose/nerdtree')
  call dein#add('honza/vim-snippets')
  call dein#add('vim-airline/vim-airline')
  call dein#add('Yggdroot/indentLine')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('junegunn/goyo.vim')
  call dein#add('tpope/vim-fugitive')
  call dein#add('airblade/vim-gitgutter')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

 set pastetoggle=<F2>
 set clipboard=unnamed
 let mapleader = ";"
 vnoremap < <gv  " better indentation
 vnoremap > >gv  " better indentation
 
" Theme
colorscheme crayon
let g:airline_theme='crayon2'

 " editor settings
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

"" vim airline
set laststatus=2
set noshowmode
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 0
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline_section_z = '%3p%%'
let g:airline_section_y = ''
let g:airline_section_b = ''
let g:airline_mode_map = {
     \ '__' : '-',
     \ 'n'  : 'N',
     \ 'i'  : 'I',
     \ 'R'  : 'R',
     \ 'c'  : 'C',
     \ 'v'  : 'V',
     \ 'V'  : 'V',
     \ '^V' : 'V',
     \ 's'  : 'S',
     \ 'S'  : 'S',
     \ '^S' : 'S',
     \ }

"" deoplete
let g:deoplete#enable_at_startup = 1
