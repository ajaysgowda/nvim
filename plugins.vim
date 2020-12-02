call plug#begin(plugged_path)

" color theme
Plug 'morhetz/gruvbox'

"coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'itchyny/lightline.vim'

Plug 'mfukar/robotframework-vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'vimwiki/vimwiki'

Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(1) } }

call plug#end()

