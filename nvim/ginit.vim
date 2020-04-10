call plug#begin(stdpath('data') . '/plugged')
Plug 'arcticicestudio/nord-vim'
call plug#end()

colorscheme nord

if exists('g:fvim_loaded')
    FVimFontLcdRender v:false
endif
