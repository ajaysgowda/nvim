let g:python_host_prog = "~/.config/nvim/venv/bin/python"
let g:python3_host_prog = "~/.config/nvim/venv/bin/python3"
let plugged_path = '~/.local/share/nvim/plugged'

source ~/.config/nvim/plugins.vim
source ~/.config/nvim/default-settings.vim
source ~/.config/nvim/functions.vim
source ~/.config/nvim/key-maps.vim

autocmd BufWritePre * :call TrimWhitespace()
autocmd FileType typescript,yaml,json,html :call TsIndent()
autocmd FileType python,cpp,cxx,h,hpp,c :call PyIndent()
autocmd FileType python :call PyMap()

