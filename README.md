I ❤ minimalism and [suckless](https://suckless.org/)™ philosophy. See also
[cat-v](https://doc.cat-v.org/).

# tl;dr

* outliner: filesystem
  * a *folder* groups **any** topic.
  * it can contain another folder (topic) / file (input to **any** program).
  * a link is a light-weight reference -- it can creates complex structures.
  * indirections are powerful.
  * it's like encapsulation in oops: bind data + operations.
* explorer: `vifm`
  * `vi`-like tui for outline operations: bookmark, navigate, preview, open.
  * everything is `clickable`.
  * everything opens in a `dwm` window possibly `st`.
* editor: `vis`
  * `vi`-like bindings with structured regexp.
* window-manager: `dwm`
* terminal: `st`
* automation: `bash`
* ide: `linux`

[The above information can be represented as an outline.]

Dispatch opening, viewing etc. to file types by having a folder in bin.

Autogenerate outlines.

File can be opened via browser, but what about reverse?

OverlayFS.

Need to see if everything: window, process etc., can be mapped to an outline.
For example, `pid` 1 has a window `pid/win/1` and output `pid/out/1/<outline>`.

If interprocess communication happens via files (like Plan 9), such outlines
can integrate well with the environment, allowing for enhanced scripting
possibilities without creating new data-structures. A file-system can actually
store lists, dictionaries, trees etc.

# operating systems

* oberon (a2)
* plan9[port] (acme, rc, rio)

# programming languages

* bash
* erlang
* es
* ghc
* io
* lua
* python (pypy)
* scheme (chez)
* smalltalk (cuis)
* tcl (tk)

# system

* bindfs
* docker
* ffmpeg
* fonts (consolas, dejavu, go, noto + nerd)
* gnu-netcat
* gvfs-mtp
* maim
* mat2
* slock
* socat
* strace
* sysstat
* unzip
* wget
* xclip
* xdotools &&
* xserver-xorg-input-synaptics
* xorg-server-xephyr
* xorg-xhost
* xpra
* xsel
* xseticon
* yt-dlp
* zip

# apps

* abduco
* bat
* briss
* cal
* djview4
* dvtm
* exa
* fd
* git (cola, gui)
* harlequin (odbc)
* jj
* lynx
* meld
* micro
* mkvtoolnix-gui
* mocp
* mpv
* qutebrowser
* recoll
* rich
* ripgrep
* scid
* sd
* shellcheck
* sqlfmt
* st
* tabbed
* tgpt
* tmux
* vifm
* vim
* vis
* xournalpp
* zathura
* zoxide

# extras

* cudatext
* leo
* sim
* zed
