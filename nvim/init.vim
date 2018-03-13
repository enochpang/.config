call plug#begin()
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-slash'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'lervag/vimtex'
call plug#end()

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround

set ignorecase
set smartcase
" set clipboard+=unnamed
" set clipboard+=unnamedplus
set scrolloff=1

set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
set showbreak=››
set breakindent
set breakindentopt=sbr

set wildmenu
set wildignorecase
set wildignore+=*.swp,*.bak
set wildignore+=*.exe,*.zip,*.pdf

if has('statusline')
    set laststatus=2
    set statusline=
    set statusline+=[%n]
    set statusline+=\ %f
    set statusline+=%h%m%r
    set statusline+=%=
    set statusline+=%y
    set statusline+=\ (%l/%L,\ %v)
endif

noremap Q <nop>
noremap <F1> <Esc>

let g:polyglot_disabled = ['latex']
let g:vimtex_view_enabled=0
