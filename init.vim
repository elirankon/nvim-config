call plug#begin('~/.vim/plugged')
set path+=**
set wildignore+=**/node_modules/**
set number
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/vim-github-dashboard'
Plug 'pangloss/vim-javascript'
Plug 'https://github.com/w0rp/ale.git'
Plug 'git://github.com/jiangmiao/auto-pairs.git' 
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
let g:ale_fixers = {'javascript': ['eslint']}
let b:ale_linters = {'javascript': ['eslint']}
let g:ale_linters_explicit = 1
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
Plug 'w0rp/ale'
Plug 'https://github.com/wesQ3/vim-windowswap'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline#extensions#tabline#formatter = 'jsformatter'
let mapleader=","
call plug#end()
syntax on
