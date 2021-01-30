" Peter Corealys .dotfiles
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set guicursor=
set relativenumber
set number
set nohlsearch
set hidden
set noerrorbells
set noswapfile
set smartcase
set ignorecase
set incsearch
set termguicolors
set scrolloff=8
set signcolumn=yes
set colorcolumn=80
set cmdheight=4

" LeaderKeyRemap
let mapleader = " "

" Vimplug

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
" Plug 'Name of the plug'
Plug 'gruvbox-community/gruvbox'
Plug 'preservim/nerdtree'
Plug 'zxqfl/tabnine-vim'
Plug 'frazrepo/vim-rainbow'
Plug 'itchyny/lightline.vim'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

colorscheme gruvbox
" highlight Normal guibg=none

" Nerdtree
nnoremap <leader>n :NERDTreeToggle<CR>

"lightline
set laststatus=2
