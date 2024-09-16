I ❤ minimalism and [suckless](https://suckless.org/)™ philosophy. See also
[plan9](https://plan9.io/plan9/) and [cat-v](https://doc.cat-v.org/).

# tl;dr

* outliner: filesystem
  * a folder can group ideas related to a *topic*.
  * it can contain other files/folders (contents/topics).
  * a link can create lightweight references.
  * indirections can create complex graphs.
  * metadata like *bookmarks* are also files/folders.
  * fuzzy searchers like `fzy` can be used to bookmark quickly.
  * viewing, editing, opening etc., can be handled by shell script switches.
  * binds *data* + *operations* like oops.
* explorer: `vifm`
  * `vi`-like tui for outline operations
  * everything is clickable.
  * everything opens in a new `dwm` window including `st`.
* editor: `vis`
  * `vi`-like bindings with structural regexp.
* window-manager: `dwm`
* terminal: `st`
* automation: `rc`
* ide: `plan9port` + `suckless` tools

[The above information can be represented as an outline.]

Autogenerate outlines (like `zoxide`).

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
* fonts (consolas, dejavu, go, noto)
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
