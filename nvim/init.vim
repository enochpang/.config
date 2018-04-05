call plug#begin()
" Plug 'fatih/vim-go'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-slash'
Plug 'lervag/vimtex'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
call plug#end()

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set clipboard+=unnamed
set clipboard+=unnamedplus
set ignorecase
set scrolloff=1
set smartcase

set breakindent
set breakindentopt=sbr
" set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
set showbreak=››

set wildignorecase
set wildignore+=*.exe,*.zip,*.pdf
set wildignore+=*.swp,*.bak

set statusline=
set statusline+=[%n]
set statusline+=\ %f
set statusline+=%h%m%r
set statusline+=%=
set statusline+=%y
set statusline+=\ (%l/%L,\ %v)

noremap Q <nop>
noremap <F1> <Esc>

let g:polyglot_disabled = ['latex']
let g:vimtex_view_enabled=0
