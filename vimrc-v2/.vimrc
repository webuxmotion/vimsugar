call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'mxw/vim-jsx'
"colorschemes
Plug'morhetz/gruvbox'

call plug#end()

syntax on
let g:mapleader=','
colorscheme gruvbox
set background=dark
set number

set noexpandtab
set noet sts=0 sw=2 ts=2
set expandtab
set tabstop=2

set hlsearch
set incsearch

" Sane Ignore For ctrlp
" https://stackoverflow.com/questions/21017857/ctrlp-still-searches-the-ignored-directory
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$|vendor\|\.hg$\|node_modules\|\.svn$\|\.yardoc\|public\/images\|public\/system\|data\|log\|tmp$',
  \ 'file': '\.exe$\|\.so$\|\.dat$'
  \ }


"mappings
map <C-n> :NERDTreeToggle<CR>
map <C-x> :!pbcopy<CR>  
map <C-c> :w !pbcopy<CR><CR> 
map <Leader> <Plug>(easymotion-prefix)
