" vim: syntax=vim

" Plugins
" =======

" Plugins should be placed in the */pack/bundle/start directory. The base path
" is ~/.vim.

" https://github.com/romainl/vim-qf
" https://github.com/tpope/vim-commentary.git
" https://github.com/tpope/vim-repeat.git
" https://github.com/tpope/vim-surround.git

" Utilities
" =========

function! SynStack()
    echo map(synstack(line("."), col(".")), "synIDattr(v:val, 'name')")
endfunction

command! SynStack call SynStack()

" Settings
" ========

set autoindent
set autoread
set backupdir=$HOME/.backup.d/
set cinoptions+=t0
set completeopt-=preview
set encoding=utf-8
set fillchars=fold: 
set formatoptions-=t
set hidden
set ignorecase
set incsearch
set laststatus=1
set lazyredraw
set noautochdir
set nofoldenable
set nohlsearch
set nonumber
set noswapfile
set nowrap
set path&
set ruler
set shiftwidth=4
set smartcase
set splitbelow
set splitright
set ssop=buffers
set t_Co=16
set tabstop=4
set textwidth=79
set timeoutlen=1000
set ttimeoutlen=0
set wildcharm=<c-z>
set wildmenu
set wildmode=full
set wrapmargin=0

let &path .= "**"
let &t_SI = "\<esc>[5 q"
let &t_SR = "\<esc>[5 q"
let &t_EI = "\<esc>[2 q"

autocmd FileType make set noexpandtab autoindent shiftwidth=4 tabstop=4

" Keyboard Mappings
" =================

" General
" =======

nnoremap <Down> gj
nnoremap <Up> gk
nnoremap Q @@
nnoremap Y y$
nnoremap j gj
nnoremap k gk
nnoremap n nzz
nnoremap s :write<CR>
vnoremap . :normal .<CR>
vnoremap < <gv
vnoremap > >gv
vnoremap S :write!<CR>
vnoremap s <Esc>:w<CR>gv
inoremap <C-C> <Esc>:qall!<CR>
inoremap <C-G> <Esc>:wq!<CR>
inoremap <C-S> <Esc>:write<CR>

" G
" =

nnoremap gp gwip
nnoremap gx :call jobstart(["xdg-open", expand("<cfile>")], {"detach": v:true})<CR>

" Square Bracket
" ==============

nnoremap [b :bprevious<CR>
nnoremap ]b :bnext<CR>
nnoremap [c :cprev<CR>
nnoremap ]c :cnext<CR>
nnoremap [t :tabprevious<CR>
nnoremap ]t :tabnext<CR>

" Backslash
" =========

nnoremap <Leader>a ggVG
nnoremap <Leader>c :close<CR>
nnoremap <Leader>d o<Esc>k
nnoremap <Leader>r :'{,'}s/\<<C-R>=expand("<cword>")<CR>\>/
nnoremap <Leader>R :%s/\<<C-R>=expand("<cword>")<CR>\>/
nnoremap <Leader>u O<Esc>j
nnoremap <Leader>w :%s/\s\+$<CR>
nnoremap <Leader>y :let @+=expand("%:p")<CR>
nnoremap <Leader>Y :let @+=expand("%:p:h")<CR>
nnoremap <Leader><Up> :<C-U>move-2<CR>==
nnoremap <Leader><Down> :<C-U>move+<CR>==
xnoremap <Leader><Up> :move-2<cr>gv=gv
xnoremap <Leader><Down> :move'>+<cr>gv=gv

" Plugins
" =======

syntax on
filetype plugin indent on

" Netrw
" =====

let g:loaded_netrw = 0
let g:loaded_netrwPlugin = 0

" Vimball
" =======

let g:loaded_vimballPlugin = 0
let g:loaded_vimball = 0

" Theme
" =====

color dark

" References
" ==========

" https://www.vi-improved.org/vimusermanual.pdf
" Practical Vim - Edit Text at the Speed of Thought (Drew Neil)
