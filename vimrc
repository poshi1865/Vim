"General Settings
syntax on
set backspace=indent,eol,start
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set noundofile
set incsearch
set laststatus=2
set noshowmode
set encoding=utf-8
set termguicolors

colorscheme molokai

"LINE NUMBERING
:set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

"Matching Brackets
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}

"Shifting windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"Changing tabs
nnoremap <F1> :tabprevious<CR>
nnoremap <F2> :tabnext<CR>

"Caps to Escape

"vim-plug
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
Plug 'kien/ctrlp.vim'
Plug 'octol/vim-cpp-enhanced-highlight'

call plug#end()

"cpp highlight
let g:cpp_no_function_highlight = 1

"NERDTree
let g:NERDTreeWinPos = "left"
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

