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
set t_Co=256
set signcolumn=yes

let g:loaded_matchparen=1


"Python highlighting
"let g:python_highlight_all = 1

"LINE NUMBERING
set number

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
Plug 'ycm-core/YouCompleteMe'
"Plug 'vim-python/python-syntax'
Plug 'morhetz/gruvbox'
Plug 'tmsvg/pear-tree'

call plug#end()

"Compiling 
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!clear;python3' shellescape(@%, 1)<CR>
autocmd filetype c nnoremap <F9> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F9> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>

"colorscheme
set background=dark
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

"cpp highlight
let g:cpp_no_function_highlight = 1
let g:c_no_function_highlight = 1

"NERDTree
let g:NERDTreeWinPos = "left"
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

"You complete me
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

