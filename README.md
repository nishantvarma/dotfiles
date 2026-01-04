I ❤ minimalism and [suckless](https://suckless.org/)™ philosophy. See also
[project oberon](https://www.projectoberon.net/) and [plan9](https://plan9.io/plan9/).
[cat-v](https://doc.cat-v.org/) has a lot of (slightly opinionated) resources
on plan9 and software minimalism.

# tl;dr

* outliner: filesystem
  * a folder can group ideas related to a topic
  * it can contain other files/folders
  * a link can create lightweight reference
  * metadata like bookmarks, mrus etc., can be links
  * fuzzy search can be used to quickly bookmark
  * [viewing](bin/view), [editing](bin/edit), [opening](bin/open), etc., can be delegated to shell scripts
  * bind data + operations like oop
* explorer: `vifm`, [fm](bin/fm)
  * `vi`-like tui for outline operations
  * everything is clickable
  * everything opens in a new `dwm` window possibly `st`
* editor: `vis`
  * `vi`-like bindings with structural regexp
* window-manager: `dwm`, `bspwm` or `rio`
* terminal: `st`
* shell: `rc`
* ide: `plan9port` + `suckless`

[The above information can be represented as an outline.]

Autogenerate outlines (like `zoxide`).

URLS can be opened via browser, but what about reverse?

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
* fonts (cantarell, consolas, dejavu, lucida, noto)
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
* xshkd
* xss-lock
* xtitle

# apps

* abduco
* dvtm
* freefilesync
* fzy (fuzzy)
* git (cola, gui)
* gnu-netcat
* jj
* leo
* ma
* maim
* meld
* mocp
* mpv
* quark (webserver)
* qutebrowser
* recoll
* scid
* shellcheck
* slock
* socat
* st
* strace
* tabbed
* textadept
* texlive
* texstudio
* vifm
* vim
* vis
* xournalpp
* yt-dlp
* zathura (djvu, ps)
* zoxide

# exp

* claude-cli
* https://github.com/sminez/ad
* opencode.ai
