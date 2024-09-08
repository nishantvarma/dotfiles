" vim: syntax=vim

" Plugins
" =======

" Plugins should be placed in the */pack/bundle/start directory. The base path
" is ~/.vim and ~/.local/share/nvim/site respectively. Check the init files for
" plugins used.

" https://github.com/romainl/vim-qf
" https://github.com/tpope/vim-commentary.git
" https://github.com/tpope/vim-repeat.git
" https://github.com/tpope/vim-surround.git

" Tips
" ====

" m[A-Z]: global bookmark
" m[a-z]: local bookmark
" gx: open file using xdg-open
" mkession: save current state

" Utilities
" =========

function! Start()
    if filereadable($HOME . "/scratch/scratch.md")
        edit $HOME/scratch/scratch.md
    endif
    if filereadable($HOME . "/scratch/scratch.txt")
        edit $HOME/scratch/scratch.txt
    endif
endfunction

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
set expandtab
set fillchars=fold: 
set foldlevel=2
set foldmethod=syntax
set foldnestmax=4
set foldtext=getline(v:foldstart)
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
set notermguicolors
set nowrap
set path&
set ruler
set shiftwidth=4
set smartcase
set spelllang=en_us
set spellsuggest=best,5
set splitbelow
set splitright
set ssop=buffers
set t_Co=16
set tabstop=4
set tags=./tags;
set textwidth=79
set timeoutlen=1000
set ttimeoutlen=0
set viminfo='1000,f1
set wildcharm=<c-z>
set wildmenu
set wildmode=full
set wrapmargin=0

let &path .= "**"
let &t_SI = "\<esc>[5 q"
let &t_SR = "\<esc>[5 q"
let &t_EI = "\<esc>[2 q"

autocmd VimEnter * if argc() == 0 | call Start() | endif
autocmd FileType make set noexpandtab autoindent shiftwidth=4 tabstop=4

" Keyboard Mappings
" =================

" General
" =======

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bnext<CR>
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

nnoremap <Leader><Leader> :e#<CR>
nnoremap <Leader>a ggVG
nnoremap <Leader>c :close<CR>
nnoremap <Leader>d o<Esc>k
nnoremap <Leader>e :NvimTreeToggle<CR>
nnoremap <Leader>E :Oil<CR>
nnoremap <Leader>f :Telescope find_files<CR>
nnoremap <Leader>F :Telescope find_files cwd=
nnoremap <Leader>g :let @_=system("start-terminal zsh -c tig")<CR>
nnoremap <Leader>k :bprevious <BAR> bdelete#<CR>
nnoremap <Leader>l :cexpr system("pyflakes " . expand("%:p")) <BAR> copen<CR>
nnoremap <Leader>q :qall<CR>
nnoremap <Leader>o :AerialToggle<CR>
nnoremap <Leader>r :'{,'}s/\<<C-R>=expand("<cword>")<CR>\>/
nnoremap <Leader>R :%s/\<<C-R>=expand("<cword>")<CR>\>/
nnoremap <Leader>s :Telescope live_grep<CR>
nnoremap <Leader>S :Telescope live_grep cwd=
nnoremap <Leader>t :rightbelow terminal<CR>
nnoremap <Leader>T :rightbelow terminal bash -c "cd %:p:h && bash"<CR>
nnoremap <Leader>u O<Esc>j
nnoremap <Leader>w :%s/\s\+$<CR>
nnoremap <Leader>X :bufdo bdelete<CR>
nnoremap <Leader>y :let @+=expand("%:p")<CR>
nnoremap <Leader>Y :let @+=expand("%:p:h")<CR>
nnoremap <Leader><Up> :<C-U>move-2<CR>==
nnoremap <Leader><Down> :<C-U>move+<CR>==
xnoremap <Leader><Up> :move-2<cr>gv=gv
xnoremap <Leader><Down> :move'>+<cr>gv=gv

" Ctrl
" ====

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-Right> <C-]>
nnoremap <C-Left> <C-T>

" Space
" =====

nnoremap <Space> :Telescope buffers sort_mru=true<CR>

" Terminal
" ========

tnoremap <Esc> <C-\><C-n>

" Plugins
" =======

syntax on
filetype plugin indent on

" Markdown
" ========

let g:markdown_fenced_languages = [
    \ "c",
    \ "sh",
    \ "html",
    \ "python",
    \ "sql",
    \ "vim"
\ ]

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

color base16-standard

" Hacks
" =====

imap jj <Esc>

hi NonText ctermfg=0

" References
" ==========

" https://www.vi-improved.org/vimusermanual.pdf
" https://neovim.io/doc/user
" Practical Vim - Edit Text at the Speed of Thought (Drew Neil)
