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
