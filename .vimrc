execute pathogen#infect()

set encoding=utf-8

syntax on
filetype plugin indent on
set expandtab
set tabstop=4
set shiftwidth=4
set laststatus=2
set number
set showtabline=2
set noshowmode
set guifont=Iosevka_Nerd_Font:h11

"""" enable 24bit true color
if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"
" vim-airline
"
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline_powerline_fonts = 1

" 
" theme
"
let g:onedark_terminal_italics = 1
let g:onedark_hide_endofbuffer = 1
let g:onedark_termcolors=16
colorscheme onedark

"
" status bar
"
" including syntastic and fugitive
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=%{FugitiveStatusline()}
set statusline+=%*

" 
" syntastic 
"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"
" ctrlp
"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

"
" Keymap
"
nmap <F8> :TagbarToggle<CR>

