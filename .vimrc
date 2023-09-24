call plug#begin()
Plug 'colors/onedark.vim' "Theme
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Use release branch (recommended)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Or build from source code by using yarn: https://yarnpkg.com
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpoge/vim-fugitive'
Plug 'voldikss/vim-floaterm'
Plug 'puremourning/vimspector'
Plug 'preservim/tagbar'
Plug 'tpope/vim-commentary'
Plug 'terryma/vim-multiple-cursors'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'ervandew/supertab'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'powerline/fonts'
Plug 'jremmen/vim-ripgrep'

call plug#end()
syntax on
colorscheme onedark


set nocompatible
set laststatus=2
set encoding=UTF-8
set number
set relativenumber
set guifont=hack_nerd_font:h16

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" compile c/c++ program
nnoremap <f6> <esc>:!gcc -o %:r %:t<enter>
nnoremap <f7> <esc>:!g++ -std=c++14 -ggdb -o ./exe/%:r %:t<enter>
" run c/c++
nnoremap <f8> <esc>:!./exe/%:r<enter>

let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'
nmap <F10> :TagbarToggle<CR>

command! FZF FloatermNew fzf
command! Rg FloatermNew --width=0.8 --height=0.8 rg
command! Broot FloatermNew --width=0.8 --height=0.8 broot


source ~/.vim/plugin/vim-multiple-cursors.vim
source ~/.vim/plugin/vimspector.vim
source ~/.vim/plugin/lightline-bufferline.vim
source ~/.vim/plugin/supertab.vim
source ~/.vim/plugin/floaterm.vim
source ~/.vim/plugin/coc.vim
source ~/.vim/plugin/nerd-tree.vim
