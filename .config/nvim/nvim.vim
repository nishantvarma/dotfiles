command! -nargs=1 Silent
    \ | execute ':silent terminal '.<q-args>
    \ | execute ':redraw!'

au TermOpen * startinsert

"TODO Clear ~/.local/share/nvim/shada/main.shada
