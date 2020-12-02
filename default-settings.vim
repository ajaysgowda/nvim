syntax on

" no error sounds
set noerrorbells
" set tabs and auto indent to 4 spaces
set tabstop=4 softtabstop=4
set shiftwidth=4
" convert tabs to spaces
set expandtab

set smartindent

" toggle hybrid line numbers
set number relativenumber
set nu rnu

set nowrap

" Enable case insenstive search
set smartcase

set noswapfile
set nobackup

set undodir=~/.config/nvim/undodir
set undofile

set incsearch

set colorcolumn=120
highlight ColorColumn ctermbg=0 guibg=lightgrey

"colorscheme
colorscheme gruvbox
set background=dark

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "

" Taken from coc readme
" TextEdit might fail if hidden is not set.
set hidden

" Taken from coc readme
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Taken from coc readme
" Give more space for displaying messages.
set cmdheight=2

" Taken from coc readme
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Taken from coc readme
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" vimwiki
let g:vimwiki_list = [{
	\ 'path': '~/vimwiki',
	\ 'template_path': '~/vimwiki/templates/',
	\ 'template_default': 'default',
	\ 'syntax': 'markdown',
	\ 'ext': '.md',
	\ 'path_html': '~/vimwiki/site_html/',
	\ 'custom_wiki2html': 'vimwiki_markdown',
	\ 'template_ext': '.tpl'}]

let g:firenvim_config = {
    \ 'localSettings': {
        \ 'riot.im': {
            \ 'selector': '',
        \ },
        \ 'slack.com': {
            \ 'selector': '',
        \ }
    \ }
\ }

