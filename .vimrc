" vim: syntax=vim

color dark

nnoremap ]b :bnext<CR>
nnoremap [b :bprevious<CR>
nnoremap ]c :cnext<CR>
nnoremap [c :cprev<CR>
nnoremap ]t :tabnext<CR>
nnoremap [t :tabprevious<CR>
nnoremap gp gwip
nnoremap j gj
nnoremap k gk
nnoremap <Leader>d o<Esc>k
nnoremap <Leader>u O<Esc>j
nnoremap s :write<CR>
nnoremap Y y$

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

vnoremap < <gv
vnoremap > >gv
vnoremap . :normal .<CR>
vnoremap s <Esc>:w<CR>gv
