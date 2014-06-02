Vim Getting Started
======

Initial files to getting started with Vim & MacVim.


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


## Use NeoComplete

In order to use neocomplete, reinstall MacVim with Lua with homebrew:

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

1. Adds best Vim plugins for Web Development, especially PHP checkers
2. Add Plugin YouCompleteMe [https://github.com/Valloric/YouCompleteMe] 


