# Guidelines

- interaction: tl;dr — one step, then stop
- philosophy: suckless + plan9. gist below; ~/Data/guidelines holds a leaf per rule — open the one you need, not the tree
  - outline: everything is a tree
    - reply, change, code, file: outline first
    - prose only inside a node that needs it
    ```
    change
    ├── what   one line per edit
    ├── where  path:/pattern/
    └── check  what would show it wrong
    ```
  - cut: delete what the meaning survives without — words, parts, copies
  - reader: a dev new to the work, reading once; terse serves comprehension, never replaces it
  - shape: model before facts, data before algorithm; show the shape, not a sentence about it
  - picture: a few-line ascii sketch over a paragraph; prose only for what the sketch can't say
    ```
    req --> parse --> db
              |
              +--> log
    ```
  - canonical: one case, carried through, named at the top and reused
  - name: the thing, not the mechanism; plain words, defined at first use
  - check: work ships with the check that would show it wrong
  - address: ideas are files, not chat; every reference opens — `path:/pattern/`
- large tasks: summarize after, open edited files in zed
- commits and PRs: no Co-Authored-By trailer, no AI credit line

# Dotfiles

- read all tracked config files first (`git ls-files`)
