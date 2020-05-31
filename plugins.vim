call plug#begin(plugged_path)

" color theme
Plug 'morhetz/gruvbox'
" git plugin
Plug 'tpope/vim-fugitive'
" typescript lint
"Plug 'leafgarland/typescript-vim'
Plug 'mbbill/undotree'
Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/lightline.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'jeffkreeftmeijer/vim-numbertoggle'

" Emmet
Plug 'mattn/emmet-vim'
"plantuml
Plug 'aklt/plantuml-syntax'
Plug 'tyru/open-browser.vim'
Plug 'weirongxu/plantuml-previewer.vim'

" fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release', 'tag': '*', 'do': { -> coc#util#install() }}

call plug#end()

