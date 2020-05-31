" python path
let g:python3_host_prog = "/home/ajaysgowda/.pyenv/versions/neovim3/bin/python"
let plugged_path = '~/.local/share/nvim/plugged'

if empty(glob(plugged_path ))

                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

syntax on

set hidden
set noerrorbells
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
"
" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

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

"intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release', 'tag': '*', 'do': { -> coc#util#install() }}

call plug#end()

colorscheme gruvbox
set background=dark


" toggle hybrid line numbers
set number relativenumber
set nu rnu

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "

let g:ctrlp_use_caching = 0


" editorconfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

"emmet
"let g:user_emmet_leader_key='<S-Tab>'
imap <S-tab> <plug>(emmet-expand-abbr)

source ~/.config/nvim/coc-maps.vim
source ~/.config/nvim/key-mappings.vim
source ~/.config/nvim/functions.vim

autocmd BufWritePre * :call TrimWhitespace()
autocmd FileType typescript,yaml,json,html :call TsIndent()
autocmd FileType python,cpp,cxx,h,hpp,c :call PyIndent()

