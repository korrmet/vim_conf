" plugins
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'justmao945/vim-clang'
Plug 'tpope/vim-fugitive'
Plug 'ilyachur/cmake4vim'
Plug 'gyim/vim-boxdraw'
call plug#end()

" turn on line numbers
set nu

" turn on syntax highlightning
syntax on

set ignorecase
set smartcase
set foldmethod=syntax

" indenting code
" set smartident
set tabstop=2
set shiftwidth=2
set expandtab

" enable color scheme
colorscheme magicka
" transperent background
hi! Normal ctermbg=NONE
hi! NonText ctermbg=NONE

" bright cursor
" hi! Cursor ctermfg=blue ctermbg=white
hi! Cursor ctermfg=NONE ctermbg=NONE
hi! iCursor ctermfg=NONE ctermbg=NONE

" highlighting tabs
set listchars=tab:>-,eol:$,trail:~,space:.,extends:>,precedes:<
highlight NonText ctermfg=darkblue
highlight SpecialKey ctermfg=darkgreen

" 80 symbols cut
set colorcolumn=80

" enable debugging
packadd termdebug
set mouse=a
" uncomment in MS Windows
" let g:termdebug_use_prompt = 1

" airline settings
let g:airline_left_sep = ''
let g:airline_right_sep = ''
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.branch = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.crypt = '�'
let g:airline_symbols.readonly = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''

" file explorer settings
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_altv = 1

" cmake settings
let g:cmake_build_dir = 'build'
let g:cmake_compile_commands = 1
