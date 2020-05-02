if exists('g:plug_installing_plugins')
  Plug 'scrooloose/nerdtree'
  finish
endif

nnoremap <silent><leader>nn :NERDTreeToggle<CR>:wincmd =<CR>
nnoremap <silent><leader>nf :NERDTreeFind<CR>:wincmd =<CR>
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeChDirMode = 2
let g:NERDTreeMinimalUI = 1
let g:NERDTreeHighlightCursorline = 0
let g:NERDTreeWinPos = "right"
" Close Vim if NERDTree is the last buffer
" Apparently this don't work
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")
"   \&& b:NERDTreeType == "primary") | q | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree")
  \&& b:NERDTree.isTabTree()) | q | endif

" Open NERDTree automatically and switch directory
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && !exists("s:std_in")
"   \| if isdirectory(argv()[0])
"      \| exe 'NERDTree' argv()[0]
"      \| wincmd p
"      \| ene
"      \| exe 'cd '.argv()[0]
"   \| else
"      \| exe 'NERDTree'
"      \| wincmd p
"   \| endif
" \| endif

autocmd FileType nerdtree setlocal nocursorline
