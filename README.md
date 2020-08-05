# VIM SETUP

## Introduction

This is my vim setup

## Installation

### Intall [Vim Plug](https://github.com/junegunn/vim-plug)

#### Windows (Neovim)

```powershell
md ~\AppData\Local\nvim\autoload
$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
(New-Object Net.WebClient).DownloadFile(
  $uri,
  $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
    "~\AppData\Local\nvim\autoload\plug.vim"
  )
)
```

#### Unix (Neovim)

```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
#### Installing Neovim from source on RaspberryPi
```sudo apt-get install git
sudo apt-get install libtool libtool-bin autoconf automake cmake g++ pkg-config unzip
git clone https://github.com/neovim/neovim.git
cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
````
##### Extra

Please refer to original documentation for more information:
[Vim Plug](https://github.com/junegunn/vim-plug)

## Plugins

- [morhetz/gruvbox](https://github.com/morhetz/gruvbox)
  --Color scheme
- [tpope/vim-fugitive](https://github.com/morhetz/gruvbox)
  -- Git wrapper
- [mbbill/undotree](https://github.com/mbbill/undotree)
  -- Undo visualizer
- [jiangmiao/auto-pairs](https://github.com/jiangmiao/auto-pairs)
  -- Insert or delete brackets, parens, quotes in pair.
- [itchyny/lightline.vim](https://github.com/itchyny/lightline.vim)
  -- A light and configurable statusline/tabline plugin for Vim
- [jeffkreeftmeijer/vim-numbertoggle](https://github.com/jeffkreeftmeijer/vim-numbertoggle)
  -- Relative line numbers
- [mattn/emmet-vim](https://github.com/mattn/emmet-vim)
  -- Emmet plugin
- [aklt/plantuml-syntax](https://github.com/aklt/plantuml-syntax)
  -- vim syntax file for plantuml
- [tyru/open-browser.vim](https://github.com/tyru/open-browser.vim)
  -- Open URI on your default browser
- [weirongxu/plantuml-previewer.vim](https://github.com/weirongxu/plantuml-previewer.vim)
  -- vim PlantUML previewer
- [junegunn/fzf.vim](https://github.com/junegunn/fzf.vim)
  -- Fuzzy finder
- [neoclide/coc.nvim](https://github.com/neoclide/coc.nvim)
  -- Intellisense engine
