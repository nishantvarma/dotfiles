I ❤ minimalism and [suckless](https://suckless.org/)™ philosophy. See also
[plan9](https://plan9.io/plan9/)[port] and [cat-v](https://doc.cat-v.org/).

# tl;dr

* outliner: filesystem
  * a folder is a collection of *topics*.
  * it can contain other folders (topics) / files (anything).
  * binds *data* + *operations* like oops.
  * a link is a light-weight reference that can create complex structures.
  * indirections can create powerful graphs.
* *bookmarks* are folders that contain **links** to important things.
* viewing, editing, opening etc., are handled by shell script switches.
* fuzzy searchers like `fzy` can be used to bookmark quickly.
* explorer: `vifm`
  * `vi`-like tui for outline operations
  * everything is `clickable`.
  * everything opens in a `dwm` window; possibly `st`.
* editor: `vis`
  * `vi`-like bindings with structural regexp.
* window-manager: `dwm`
* terminal: `st`
* automation: `rc`
* ide: `plan9[port]` + `suckless` tools

[The above information can be represented as an outline.]

Autogenerate outlines.

URLS can be opened via browser, but what about reverse?

Cooler FS'es?

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
* gvfs-mtp
* mat2
* sysstat
* xclip
* xdotools
* xorg-server-xephyr
* xorg-xhost
* xpra
* xsel
* xserver-xorg-input-synaptics

# apps

* abduco
* djview4
* dvtm
* fzy
* git (cola, gui)
* gnu-netcat
* jj
* maim
* meld
* mocp
* mpv
* qutebrowser
* recoll
* scid
* shellcheck
* slock
* socat
* st
* strace
* tabbed
* tgpt
* vifm
* vim
* vis
* xournalpp
* yt-dlp
* zathura
* zoxide
