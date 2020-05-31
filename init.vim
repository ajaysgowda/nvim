" python path
let g:python3_host_prog = "/home/ajaysgowda/.pyenv/versions/neovim3/bin/python"
let plugged_path = '~/.local/share/nvim/plugged'

if empty(glob(plugged_path ))

                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


source ~/.config/nvim/plugins.vim
source ~/.config/nvim/default-setting.vim
source ~/.config/nvim/functions.vim
source ~/.config/nvim/coc-maps.vim
source ~/.config/nvim/key-mappings.vim

autocmd BufWritePre * :call TrimWhitespace()
autocmd FileType typescript,yaml,json,html :call TsIndent()
autocmd FileType python,cpp,cxx,h,hpp,c :call PyIndent()

