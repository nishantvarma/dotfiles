" Setup
" =====

hi clear
syntax reset
let s:colors_name = "base16-standard"

" Highlighting Function
" =====================

function <sid>hi(group, ctermbg, ctermfg, attr)
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
    exec "hi " . a:group . " cterm=" . a:attr
endfunction

let s:black = 0
let s:red = 1
let s:green = 2
let s:yellow = 3
let s:blue = 4
let s:magenta = 5
let s:cyan = 6
let s:white = 7
let s:gray = 8

" Editor
" ======

call <sid>hi("ColorColumn", s:gray, "none", "none")
call <sid>hi("Conceal", s:gray, s:black, "none")
call <sid>hi("Cursor", "none", "none", "none")
call <sid>hi("CursorColumn", s:gray, "none", "none")
call <sid>hi("CursorLine", s:gray, s:white, "none")
call <sid>hi("CursorLineNr", s:gray, "none", "none")
call <sid>hi("Debug", s:gray, "none", "none")
call <sid>hi("Directory", "none", s:blue, "none")
call <sid>hi("Error", s:black, s:red, "none")
call <sid>hi("ErrorMsg", s:black, s:white, "none")
call <sid>hi("Exception", "none", s:white, "none")
call <sid>hi("FoldColumn", s:gray, s:blue, "none")
call <sid>hi("Folded", s:gray, s:yellow, "none")
call <sid>hi("IncSearch", s:gray, "none", "none")
call <sid>hi("LineNr", s:gray, s:yellow, "none")
call <sid>hi("Macro", "none", s:magenta, "none")
call <sid>hi("MatchParen", "none", "none", "none")
call <sid>hi("MoreMsg", "none", "none", "none")
call <sid>hi("NonText", "none", s:black, "none")
call <sid>hi("Normal", "none", "none", "none")
call <sid>hi("PMenu", s:gray, s:white, "none")
call <sid>hi("PMenuSel", s:blue, s:white, "none")
call <sid>hi("PmenuSbar", s:blue, "none", "none")
call <sid>hi("PmenuThumb", s:green, "none", "none")
call <sid>hi("QuickFixLine", s:gray, "none", "none")
call <sid>hi("Search", s:gray, "none", "none")
call <sid>hi("SignColumn", "none", "none", "none")
call <sid>hi("StatusLine", s:gray, s:white, "none")
call <sid>hi("StatusLineNC", s:gray, s:white, "none")
call <sid>hi("StatusLineTerm", s:gray, s:white, "none")
call <sid>hi("StatusLineTermNC", s:gray, s:white, "none")
call <sid>hi("TabLine", "none", s:gray, "none")
call <sid>hi("TabLineFill", "none", "none", "none")
call <sid>hi("TabLineSel", s:gray, s:black, "none")
call <sid>hi("ToolbarButton", "none", "none", "none")
call <sid>hi("VertSplit", s:gray, s:gray, "none")
call <sid>hi("Visual", s:gray, "none", "none")
call <sid>hi("VisualNOS", "none", "none", "none")
call <sid>hi("Warning", s:black, s:white, "none")
call <sid>hi("WarningMsg", s:black, s:white, "none")
call <sid>hi("WildMenu", s:green, s:black, "none")

" Syntax
" ======

call <sid>hi("Boolean", "none", s:cyan, "none")
call <sid>hi("Character", "none", s:green, "none")
call <sid>hi("Comment", "none", s:gray, "none")
call <sid>hi("Conditional", "none", s:magenta, "none")
call <sid>hi("Constant", "none", s:magenta, "none")
call <sid>hi("Define", "none", s:blue, "none")
call <sid>hi("Delimiter", "none", s:blue, "none")
call <sid>hi("DiffAdd", "none", s:green, "none")
call <sid>hi("DiffChange", "none", s:magenta, "none")
call <sid>hi("DiffDelete", "none", s:green, "none")
call <sid>hi("DiffText", "none", "none", "none")
call <sid>hi("Float", "none", s:magenta, "none")
call <sid>hi("Function", "none", s:red, "none")
call <sid>hi("Identifier", "none", s:blue, "none")
call <sid>hi("Include", "none", s:magenta, "none")
call <sid>hi("Keyword", "none", s:magenta, "none")
call <sid>hi("Label", "none", s:yellow, "none")
call <sid>hi("Number", "none", s:cyan, "none")
call <sid>hi("Operator", "none", s:cyan, "none")
call <sid>hi("PreProc", "none", s:magenta, "none")
call <sid>hi("Question", "none", s:white, "none")
call <sid>hi("Repeat", "none", s:yellow, "none")
call <sid>hi("Special", "none", s:magenta, "none")
call <sid>hi("SpecialChar", "none", s:magenta, "none")
call <sid>hi("SpecialKey", "none", s:magenta, "none")
call <sid>hi("SpellBad", "none", "none", "none")
call <sid>hi("SpellCap", s:gray, s:yellow, "none")
call <sid>hi("SpellLocal", "none", "none", "none")
call <sid>hi("SpellRare", "none", "none", "none")
call <sid>hi("Statement", "none", s:yellow, "none")
call <sid>hi("StorageClass", "none", s:blue, "none")
call <sid>hi("String", "none", s:green, "none")
call <sid>hi("Structure", "none", s:green, "none")
call <sid>hi("Tag", "none", s:blue, "none")
call <sid>hi("Title", "none", s:green, "none")
call <sid>hi("Todo", s:yellow, s:black, "none")
call <sid>hi("TooLong", "none", s:red, "none")
call <sid>hi("Type", "none", s:blue, "none")
call <sid>hi("TypeDef", "none", s:blue, "none")
call <sid>hi("Underlined", s:black, s:blue, "underline")

" Cleanup
" =======

delfunction <sid>hi

unlet s:black
unlet s:red
unlet s:green
unlet s:yellow
unlet s:blue
unlet s:magenta
unlet s:cyan
unlet s:white
unlet s:gray
