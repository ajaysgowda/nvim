" python path
let g:python3_host_prog = "/home/ajaysgowda/.pyenv/versions/neovim3/bin/python"
let plugged_path = '~/AppData/Local/nvim/plugged'


"if (!(Test-Path ~/AppData/Local/nvim/plugged))
"	echo installing
"	md ~\AppData\Local\nvim\autoload
"	$uri = 'ht(New-Object Net.WebClient).DownloadFile(
"	  $uri,
"	  $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
""~\AppData\Local\nvim\autoload\plug.vim"
"	  )
"	)tps://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
"
"endif


source ~/AppData/Local/nvim/plugins.vim
source ~/AppData/Local/nvim/functions.vim
source ~/AppData/Local/nvim/default-setting.vim
source ~/AppData/Local/nvim/coc-maps.vim
source ~/AppData/Local/nvim/key-mappings.vim

autocmd BufWritePre * :call TrimWhitespace()
autocmd FileType typescript,yaml,json,html :call TsIndent()
autocmd FileType python,cpp,cxx,h,hpp,c :call PyIndent()
autocmd FileType python let b:coc_root_patterns = ['.git', '.env']
autocmd FileType typescript,yaml,json,html let b:coc_root_patterns = ['.git']

