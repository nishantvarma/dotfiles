" Setup
" =====

hi clear
syntax reset
let g:colors_name = "base16-standard"

" Highlighting Function
" =====================

function <sid>hi(group, ctermbg, ctermfg, attr)
    if a:ctermbg != ""
        exec "hi " . a:group . " ctermbg=" . a:ctermbg
    endif
    if a:ctermfg != ""
        exec "hi " . a:group . " ctermfg=" . a:ctermfg
    endif
    if a:attr != ""
        exec "hi " . a:group . " cterm=" . a:attr
    endif
endfunction

" Editor
" ======

call <sid>hi("ColorColumn", "gray", "none", "none")
call <sid>hi("Conceal", "gray", "black", "none")
call <sid>hi("Cursor", "none", "none", "none")
call <sid>hi("CursorColumn", "gray", "none", "none")
call <sid>hi("CursorLine", "gray", "white", "none")
call <sid>hi("CursorLineNr", "gray", "none", "none")
call <sid>hi("Debug", "gray", "none", "none")
call <sid>hi("Directory", "none", "blue", "none")
call <sid>hi("Error", "black", "red", "none")
call <sid>hi("ErrorMsg", "black", "white", "none")
call <sid>hi("Exception", "none", "white", "none")
call <sid>hi("FoldColumn", "gray", "blue", "none")
call <sid>hi("Folded", "gray", "yellow", "none")
call <sid>hi("IncSearch", "yellow", "black", "none")
call <sid>hi("LineNr", "gray", "none", "none")
call <sid>hi("Macro", "none", "magenta", "none")
call <sid>hi("MatchParen", "none", "none", "none")
call <sid>hi("MoreMsg", "none", "none", "none")
call <sid>hi("NonText", "none", "black", "none")
call <sid>hi("Normal", "none", "none", "none")
call <sid>hi("PMenu", "gray", "black", "none")
call <sid>hi("PMenuSel", "yellow", "black", "none")
call <sid>hi("PmenuSbar", "gray", "black", "none")
call <sid>hi("PmenuThumb", "none", "none", "none")
call <sid>hi("SignColumn", "none", "none", "none")
call <sid>hi("StatusLine", "gray", "white", "none")
call <sid>hi("StatusLineNC", "gray", "white", "none")
call <sid>hi("StatusLineTerm", "gray", "white", "none")
call <sid>hi("StatusLineTermNC", "gray", "white", "none")
call <sid>hi("TabLine", "none", "gray", "none")
call <sid>hi("TabLineFill", "none", "none", "none")
call <sid>hi("TabLineSel", "gray", "black", "none")
call <sid>hi("ToolbarButton", "none", "none", "none")
call <sid>hi("VertSplit", "gray", "gray", "none")
call <sid>hi("Visual", "yellow", "black", "none")
call <sid>hi("VisualNOS", "none", "none", "none")
call <sid>hi("Warning", "black", "white", "none")
call <sid>hi("WarningMsg", "black", "white", "none")
call <sid>hi("WildMenu", "yellow", "black", "none")

" Syntax

call <sid>hi("Boolean", "none", "cyan", "none")
call <sid>hi("Character", "none", "green", "none")
call <sid>hi("Comment", "none", "gray", "none")
call <sid>hi("Conceal", "none", "none", "none")
call <sid>hi("Conditional", "none", "magenta", "none")
call <sid>hi("Constant", "none", "magenta", "none")
call <sid>hi("Define", "none", "blue", "none")
call <sid>hi("Delimiter", "none", "blue", "none")
call <sid>hi("DiffAdd", "none", "green", "none")
call <sid>hi("DiffChange", "none", "magenta", "none")
call <sid>hi("DiffDelete", "none", "green", "none")
call <sid>hi("DiffText", "none", "none", "none")
call <sid>hi("Float", "none", "magenta", "none")
call <sid>hi("Function", "none", "green", "none")
call <sid>hi("Identifier", "none", "blue", "none")
call <sid>hi("Include", "none", "magenta", "none")
call <sid>hi("Keyword", "none", "magenta", "none")
call <sid>hi("Label", "none", "yellow", "none")
call <sid>hi("Number", "none", "cyan", "none")
call <sid>hi("Operator", "none", "green", "none")
call <sid>hi("PreProc", "none", "magenta", "none")
call <sid>hi("Question", "none", "white", "none")
call <sid>hi("Repeat", "none", "yellow", "none")
call <sid>hi("Search", "blue", "none", "none")
call <sid>hi("Special", "none", "magenta", "none")
call <sid>hi("SpecialChar", "none", "magenta", "none")
call <sid>hi("SpecialKey", "none", "magenta", "none")
call <sid>hi("SpellBad", "none", "none", "none")
call <sid>hi("SpellCap", "gray", "yellow", "none")
call <sid>hi("SpellLocal", "none", "none", "none")
call <sid>hi("SpellRare", "none", "none", "none")
call <sid>hi("Statement", "none", "yellow", "none")
call <sid>hi("StorageClass", "none", "blue", "none")
call <sid>hi("String", "none", "cyan", "none")
call <sid>hi("Structure", "none", "green", "none")
call <sid>hi("Tag", "none", "blue", "none")
call <sid>hi("Title", "none", "green", "none")
call <sid>hi("Todo", "yellow", "black", "none")
call <sid>hi("TooLong", "none", "red", "none")
call <sid>hi("Type", "none", "blue", "none")
call <sid>hi("TypeDef", "none", "blue", "none")
call <sid>hi("Underlined", "black", "blue", "underline")

" Cleanup

delfunction <sid>hi
