Vim Getting Started
======

Initial files to getting started with Vim & MacVim.

## Before Using MacVim

MacVim is a GUI for Text Editor Vim (Vi Improved).
Before using, you would read about Vim features.

Vim has a built-in tutorial for beginners that you can find throught CLI, so type:

```vim
vimtutor
```

Otherwise, you can find alternative resources:

1. Vim Interactive Tutorial [http://www.openvim.com/tutorial.html]
2. Vim CheatSheet [http://www.fprintf.net/vimCheatSheet.html]


Vim is an older Text Editor, but it's very powerful. A lot of that power comes from extensibility. 
There are awesome features and open source plugins for programmers:

[http://michael.peopleofhonoronly.com/vim/] 


## About this Repository

Insert this files in ~/.
This repository use Pathogen + Vundle Plugin Managers.


## Manual Installation: 

In terminal, use:

```vim
cd ~/
touch .vimrc
mkdir .vim
```

so, you will create the .vimrc file and the .vim folder. Use Vi (or nano) to edit this file with content above.

My advice is to clone this repository to your ~/ directory:

```vim
mkdir ~/.vim
git clone https://github.com/DanPhyxius/vim-getting-started.git ~/
```

## Tips

In order to use MacVim with best plugins installed, you have to download manually someone of them:

1. Vundle Plugin Manager [https://github.com/gmarik/Vundle.vim#quick-start]
2. Pathogen (Plugin Manager Alternative) [https://github.com/tpope/vim-pathogen]
3. NERDTree (to install with manual download on ~/bundle directory and use Pathogen command in .vimrc) [https://github.com/scrooloose/nerdtree]
4. Syntastic (automatic installed with Vundle command in .vimrc)
5. vim-airline  (automatic installed with Vundle command in .vimrc)
6. vim-colorschemes  (automatic installed with Vundle command in .vimrc)
7. NeoComplete (download files from [https://github.com/Shougo/neocomplete.vim])

## Requirements for NeoComplete

In order to use neocomplete, reinstall MacVim with Lua via homebrew:

```vim
brew install macvim --with-cscope --with-lua --HEAD
```

After that, open MacVim and use:

```vim
:BundleInstall
```

In a few minutes, the plugins tag with Bundle instruction in .vimrc file will be automatically installed in MacVim.

## Vim Colorschemes Added

Add an initial .vim directory with some colorschemes for Vim.

## Todo

1. Adds support best Vim plugins for Web Development, especially PHP checkers
2. Add support for plugin YouCompleteMe [https://github.com/Valloric/YouCompleteMe] 


