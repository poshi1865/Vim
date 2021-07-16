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
set undodir="C:\Program Files (x86)\Vim\undodir"
set undofile
set incsearch
set guifont=Consolas:h13:cANSI:qDRAFT
set laststatus=2
set noshowmode
set termguicolors
set encoding=utf-8

colorscheme DevC++

"set background=dark
"autocmd vimenter * ++nested colorscheme solarized8_high

"LINE NUMBERING
:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

"WORKING DIRECTORY
cd E:\VimWorkspace

inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}


"NERDTREE
let g:NERDTreeWinPos = "left"
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

autocmd VimEnter * NERDTree

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l



call plug#begin('C:\Users\Lenovo\vimfiles\autoload')

Plug 'itchyny/lightline.vim'
Plug 'tmsvg/pear-tree'
Plug 'lifepillar/vim-solarized8'
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'sjl/badwolf'
"Plug 'octol/vim-cpp-enhanced-highlight'
Plug '~romainl/vim-bruin'
Plug 'epmor/lampaces-demon-vim'
Plug 'ycm-core/YouCompleteMe'
Plug 'l3nkz/ycmconf'


call plug#end()

"YOUCOMPLETEME
"let g:ycm_global_ycm_extra_conf = 'C:\Users\Lenovo\vimfiles\autoload\YouCompleteMe\.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0
set completeopt-=preview


"COMPILING C++ FILES
autocmd filetype cpp nnoremap <F5> :w <bar> !cls && g++ -std=c++14 -Wall -O2 % -o %:r<CR>

autocmd filetype cpp nnoremap <F9> :w <bar> !cls && g++ -std=c++14 -Wall -O2 % -o %:r && cls && %:r<CR>

"COMPILING C FILES
autocmd filetype c nnoremap <F5> :w <bar> !cls && gcc -o %:r %:r.c<CR>

autocmd filetype c nnoremap <F9> :w <bar> !cls && gcc -o %:r %:r.c && cls && %:r<CR>

autocmd filetype python nnoremap <F9> :w <bar> ! cls && python3 %<CR>

nnoremap <F1> :tabprevious<CR>
nnoremap <F2> :tabnext<CR>

function! ToggleGUICruft()
  if &guioptions=='i'
    exec('set guioptions=imTrL')
  else
    exec('set guioptions=i')
  endif
endfunction

map <F11> <Esc>:call ToggleGUICruft()<cr>

" by default, hide gui menus
"set guioptions=i
