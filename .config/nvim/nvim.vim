command! -nargs=1 Silent
    \ | execute ':silent terminal '.<q-args>
    \ | execute ':redraw!'

set shada="none"

au TermOpen * startinsert

"TODO Clear ~/.local/share/nvim/shada/main.shada

tnoremap <ESC> <C-\><C-N>:bd!<CR>

" Plugins
" =======

" All unified plugins can be used.

" https://github.com/ms-jpq/chadtree.git

" It should be installed to ~/.local/share/nvim/site/pack/*/start.
