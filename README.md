I ❤ minimalism and [suckless](https://suckless.org/)™ philosophy. See also
[Plan9](https://plan9.io/plan9/) and [cat-v](https://doc.cat-v.org/).

# tl;dr

* outliner: filesystem
  * a *folder* groups **any** topic.
  * it can contain another folder (topic) / file (input to **any** program).
  * a link is a light-weight reference - it can create complex structures.
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
* ide: `plan9[port]`

[The above information can be represented as an outline.]

Autogenerate outlines.

File can be opened via browser, but what about reverse?

Cooler FS?

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
* gnu-netcat
* gvfs-mtp
* maim
* mat2
* slock
* socat
* strace
* sysstat
* xclip
* xdotools
* xorg-server-xephyr
* xorg-xhost
* xpra
* xsel
* xserver-xorg-input-synaptics
* yt-dlp

# apps

* abduco
* djview4
* dvtm
* git (cola, gui)
* jj
* meld
* mocp
* mpv
* qutebrowser
* recoll
* scid
* shellcheck
* st
* tabbed
* tgpt
* vifm
* vim
* vis
* xournalpp
* zathura
* zoxide
