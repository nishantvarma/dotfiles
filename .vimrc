" vim: syntax=vim

color dark

let &t_EI = "\<esc>[2 q"
let &t_SI = "\<esc>[5 q"
let &t_SR = "\<esc>[5 q"

filetype plugin indent on

nnoremap ]b :bnext<CR>
nnoremap [b :bprevious<CR>
nnoremap ]c :cnext<CR>
nnoremap [c :cprev<CR>
nnoremap ]t :tabnext<CR>
nnoremap [t :tabprevious<CR>
nnoremap <Up> gk
nnoremap <Down> gj
nnoremap gp gwip
nnoremap j gj
nnoremap k gk
nnoremap <Leader>d o<Esc>k
nnoremap <Leader>u O<Esc>j
nnoremap n nzz
nnoremap Q @@
nnoremap s :write<CR>
nnoremap Y y$
vnoremap < <gv
vnoremap > >gv
vnoremap . :normal .<CR>
vnoremap s <Esc>:w<CR>gv

set autoindent
set backupdir=$HOME/.backup.d/
set encoding=utf-8
set ignorecase
set incsearch
set laststatus=2
set noswapfile
set ruler
set smartcase
set splitbelow
set splitright
set textwidth=79

syntax on
