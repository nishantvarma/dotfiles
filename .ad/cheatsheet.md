# ad Editor Cheatsheet

## Modes
```
i/a/I/A  Insert mode (at cursor/after/line start/line end)
:        Command mode
!        Run shell command
.        Edit mode (structural regex)
Esc      Back to Normal
```

## Navigation
```
h j k l     Move cursor
w / b       Word forward / backward
g g / g e   Buffer start / end
g h / g l   Line start / end
Ctrl-h/l    Line start / end
{ / }       Paragraph up / down
```

## Selection (Dot)
```
x           Select line
X           Select paragraph
%           Select entire buffer
*           Smart expand (word/path/URL)
Alt-i (     Select inside parens  () [] {} <> "" ''
W / B       Extend selection by word
J / K       Extend selection by line
Alt-l       Extend to end of line
Alt-h       Extend to start of line
;           Flip active cursor in range
,           Collapse to start
Alt-,       Collapse to end
```

## Editing
```
d           Delete selection
c           Delete + enter Insert
y           Yank (copy)
p           Paste
u           Undo
Ctrl-r      Redo
> / <       Indent / unindent
```

## Windows
```
Alt-w/a/s/d       Navigate windows (up/left/down/right)
Alt-W/A/S/D       Move window
<Space> w /       New column
<Space> w -       New window
<Space> w h/j/k/l Navigate windows
```

## Buffers
```
<Space> b         Buffer picker
<Space> <Space>   Previous buffer
-                 Find file
_                 Find file in repo
:bn / :bp         Next / prev buffer
:db               Delete buffer
```

## Files
```
s                 Save (:write)
q                 Quit
:o <path>         Open file
:wq               Save and quit
```

## Search
```
/                 Fuzzy search in buffer
Enter             Load (open file/search text)
@                 Execute selection
Alt-[ / Ctrl-o    Jump back
Alt-] / Ctrl-i    Jump forward
```

## Edit Mode (.)
```
Syntax: [address] [operators] action

Operators:
  x/re/    Extract matches
  y/re/    Split on regex
  g/re/    Require match
  v/re/    Require no match

Actions:
  d        Delete
  c/text/  Change
  a/text/  Append
  i/text/  Insert before

Examples:
  , x/foo/ c/bar/       Replace all foo with bar
  , x/\n\n+/ c/\n/      Remove blank lines
  , x/\n/ c/ /          Join lines
  , x/^/ a/>> /         Prefix all lines
  , x/ +$/ d            Delete trailing spaces
```

## Virtual Buffers
```
Alt-;      Toggle +scratch
Alt-=      View +logs
:help      View +help
```

## Mouse
```
Left       Select
Right      Load (open/search)
Middle     Execute
```
